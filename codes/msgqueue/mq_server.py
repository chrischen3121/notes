# mq_server.py
import asyncio
from asyncio import StreamReader, StreamWriter, gather
from collections import defaultdict, deque
from typing import DefaultDict, Deque

from msgproto import read_msg, send_msg

SUBSCRIBERS: DefaultDict[bytes, Deque] = defaultdict(deque)


async def client(reader: StreamReader, writer: StreamWriter):
    peername = writer.get_extra_info("peername")
    #  On first connect, a client must send a message containing
    # the channel to subscribe to
    subscribe_channel = await read_msg(reader)
    SUBSCRIBERS[subscribe_channel].append(writer)
    print(f"Remote {peername} subscribed to {subscribe_channel}")
    try:
        # for the life of the connection, a client sends a message
        # to a channel by first sending a message containing the
        # destination channel name followed by a message containing
        # the data
        while channel_name := await read_msg(reader):
            data = await read_msg(reader)
            print(f"Sending to {channel_name}: {data[:19]}...")
            conns = SUBSCRIBERS[channel_name]
            if conns and channel_name.startswith(b"/queue"):
                # rotation of the deque is how we keeptrack of
                # which client is next in line for /queue distribution
                # a single deque rotation is an O(1) operation
                conns.rotate()
                conns = [conns[0]]
            # if any subscriber is slow to consume what we’re sending,
            # it might take a long time.
            # We need to decouple the receiving of messages
            # from the sending of messages by using the message queue
            await gather(*[send_msg(c, data) for c in conns])
    except asyncio.CancelledError:
        print(f"Remote {peername} closing connection.")
        writer.close()
        await writer.wait_closed()
    except asyncio.IncompleteReadError:
        print(f"Remote {peername} disconnected")
    finally:
        print(f"Remote {peername} closed")
        SUBSCRIBERS[subscribe_channel].remove(writer)
