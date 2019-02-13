# python-server-docker
This is a simple server developed by python and docker .

---

## How to run ?

### Local

```
$ python app.py
$ python -m http.server 8080
$ open http://localhost:8080/
```

### Docker

```
$ docker build -t py-server .
$ docker run -it -p 8080:8080 py-server
```
