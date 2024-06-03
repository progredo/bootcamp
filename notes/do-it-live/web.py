import os
from pprint import pprint

from wsgiref.simple_server import make_server


def whatever():
    return "text/plain", "whatever".encode("utf-8")


def html():
    return (
        "text/html",
        "<html><head><title>FUCK</title></head><body>ZOMG</body></html>".encode(
            "utf-8"
        ),
    )


def hello():
    return "text/plain", "hello".encode("utf-8")


def things(query):
    return "text/plain", f"Your query was: {query}".encode("utf-8")


def files(filename):
    static_file_path = os.environ.get("MY_APP_STATIC_FILE_PATH")
    if static_file_path is None:
        raise Exception(
            "FATAL: required environment variable MY_APP_STATIC_FILE_PATH has not been set, aborting!"
        )

    with open(f"{static_file_path}/{filename}", "rb") as f:
        data = f.read()
    return "image/jpeg", data


def app(environ, start_response):
    """
    for k, v in os.environ.items():
        if k in environ:
            del environ[k]
    """

    if environ["PATH_INFO"] == "/whatever":
        content_type, body = whatever()

    elif environ["PATH_INFO"].startswith("/files"):
        filename_parts = environ["PATH_INFO"].split("/")
        filename = filename_parts[-1]
        content_type, body = files(filename)

    elif environ["PATH_INFO"] == "/html":
        content_type, body = html()

    elif environ["PATH_INFO"] == "/things":
        content_type, body = things(environ["QUERY_STRING"])
    else:
        content_type, body = hello()

    headers = [("content-type", content_type)]
    start_response("200 OK", headers)
    encoded_response = body
    return [encoded_response]


server = make_server("localhost", 8080, app)

while True:
    server.handle_request()
