Builds a docker image with the [dockerscan](https://github.com/cr0hn/dockerscan) ready to run.

Running
-------

- run the docker container with:

```
docker run --rm --net=host waja/dockerscan -h
```

Building
--------

```
make build
```

Get a shell in a running container
----------------------------------

```
make shell
```
