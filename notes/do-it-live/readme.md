# Do It Live - 05/31/2024

## Summary:

We discuss HTTP internals, and talk about what it actually means to accept an HTTP request and do something useful with it in Python.

* "You type `google.com` into a browser and hit enter, what happens next?" is a classic tech interview question. [This is the most complete answer](https://github.com/alex/what-happens-when) I have ever seen.

## Tools Used / Referenced
* [netcat](https://en.wikipedia.org/wiki/Netcat) for connecting to TCP sockets.
* [httpbin](http://httpbin.org/) for making arbitrary HTTP requests to a live server for demonstration purposes.
* [chrome dev tools](https://developer.chrome.com/docs/devtools) for looking at the HTTP traffic a browser makes.
* [screen](https://www.gnu.org/software/screen/)
* WSL AKA [Windows Subsystem for Linux](https://learn.microsoft.com/en-us/windows/wsl/install)
* [Black](https://github.com/psf/black) for formatting your Python code.
* Web frameworks:
  * [flask](https://flask.palletsprojects.com/en/3.0.x/)
  * [django](https://www.djangoproject.com/)
  * [fastapi](https://fastapi.tiangolo.com/)
  * [ruby on rails](https://rubyonrails.org/) 

## Resources:
* The Mozilla Developer Network (MDN) is one of the best resources there is for understanding web technology. Their [overview of HTTP](https://developer.mozilla.org/en-US/docs/Web/HTTP/Overview) is outstanding.
* A bunch of [great info about WSGI](https://wsgi.readthedocs.io/en/latest/learn.html).
* An [explanation](https://12factor.net/config) about the pattern of doing app configuration using environment variables.
* [Some info](https://wiki.python.org/moin/Routing) about request routing.
* [This detailed guide](https://realpython.com/python-return-statement/) to the Python `return` statement has a good [section about returning multiple values](https://realpython.com/python-return-statement/#returning-multiple-values).
* [Query Strings](https://en.wikipedia.org/wiki/Query_string).
* [Doc Strings](https://peps.python.org/pep-0257/).
