#!/usr/bin/env python3
# Metric Server
# One half of this program will receive data from other applications,
# and the other half will provide data to browser clients
# via server-sent events (SSEs)
import asyncio
import json
from contextlib import suppress
from weakref import WeakSet

import aiohttp
import zmq
import zmq.asyncio
from aiohttp import web
from aiohttp_sse import sse_response

# zmq.asyncio.install()
ctx = zmq.asyncio.Context()
# Each connected http client will have an associated Queue() instance,
# so this connections identifier is really a set of queues
connections = WeakSet()


async def collector():
    sock = ctx.socket(zmq.SUB)
    sock.setsockopt_string(zmq.SUBSCRIBE, "")
    sock.bind("tcp://*:5555")
    with suppress(asyncio.CancelledError):
        while data := await sock.recv_json():
            print(data)
            for q in connections:
                await q.put(data)
    sock.close()


async def feed(request):
    # http request
    queue = asyncio.Queue()
    connections.add(queue)
    with suppress(asyncio.CancelledError):
        async with sse_response(request) as resp:
            while data := await queue.get():
                print("sending data:", data)
                resp.send(json.dumps(data))
    return resp


async def index(request):
    return aiohttp.web.FileResponse("./charts.html")


async def start_collector(app):
    app["collector"] = app.loop.create_task(collector())


async def stop_collector(app):
    print("Stopping collector...")
    app["collector"].cancel()
    await app["collector"]
    ctx.term()


if __name__ == "__main__":
    app = web.Application()
    app.router.add_route("GET", "/", index)
    app.router.add_route("GET", "/feed", feed)
    app.on_startup.append(start_collector)
    app.on_cleanup.append(stop_collector)
    web.run_app(app, host="127.0.0.1", port=8088)
