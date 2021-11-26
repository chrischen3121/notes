#!/usr/bin/env python3
from asyncio import create_task, gather
from string import Template

from aiohttp import ClientSession, web
from bs4 import BeautifulSoup


async def news(request):
    # postprocessors: cnn_articles and aljazeera_articles
    sites = [
        ("http://edition.cnn.com", cnn_articles),
        ("http://www.aljazeera.com", aljazeera_articles),
    ]
    tasks = [create_task(news_fetch(*s)) for s in sites]
    await gather(*tasks)
    items = {
        text: f'<div class="box {kind}"><span><a href="{href}">{text}</a></span></div>'
        for task in tasks
        for href, text, kind in task.result()
    }
    content = "".join(items[x] for x in sorted(items))
    page = Template(open("index.html").read())
    return web.Response(body=page.safe_substitute(body=content), content_type="text/html")


async def news_fetch(url, postprocess):
    proxy_url = f"http://localhost:8050/render.html?url={url}&timeout=60&wait=1"
    async with ClientSession() as session:
        async with session.get(proxy_url) as resp:
            data = await resp.read()
            data = data.decode("utf8")
    return postprocess(url, data)


def cnn_articles(url, page_data):
    soup = BeautifulSoup(page_data, "lxml")

    def match(tag):
        return (
            tag.text
            and tag.has_attr("href")
            and tag["href"].startswith("/")
            and tag["href"].endswith(".html")
            and tag.find(class_="cd__headline-text")
        )

    headlines = soup.find_all(match)
    return [(url + hl["href"], hl.text, "cnn") for hl in headlines]


def aljazeera_articles(url, page_data):
    soup = BeautifulSoup(page_data, "lxml")

    def match(tag):
        return (
            tag.text
            and tag.has_attr("href")
            and tag["href"].startswith("/news")
            and tag["href"].endswith(".html")
        )

    headlines = soup.find_all(match)
    return [(url + hl["href"], hl.text, "aljazeera") for hl in headlines]


if __name__ == "__main__":
    app = web.Application()
    app.router.add_get("/news", news)
    web.run_app(app, port=8080)
