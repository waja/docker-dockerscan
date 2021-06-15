<!-- markdownlint-disable MD045 -->
# Docker-Dockerscan

[![](https://images.microbadger.com/badges/version/waja/dockerscan.svg)](https://hub.docker.com/r/waja/dockerscan/)
[![](https://images.microbadger.com/badges/image/waja/dockerscan.svg)](https://hub.docker.com/r/waja/dockerscan/)
[![Build Status](https://travis-ci.org/Cyconet/docker-dockerscan.svg?branch=development)](https://travis-ci.org/Cyconet/docker-dockerscan)
[![Docker Build Status](https://img.shields.io/docker/build/waja/dockerscan.svg)](https://hub.docker.com/r/waja/dockerscan/)
[![GitHub tag](https://img.shields.io/github/tag/Cyconet/docker-dockerscan.svg)](https://github.com/Cyconet/docker-dockerscan/tags)
[![](https://img.shields.io/docker/pulls/waja/dockerscan.svg)](https://hub.docker.com/r/waja/dockerscan/)
[![](https://img.shields.io/docker/stars/waja/dockerscan.svg)](https://hub.docker.com/r/waja/dockerscan/)
[![](https://img.shields.io/docker/automated/waja/dockerscan.svg)](https://hub.docker.com/r/waja/dockerscan/)

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
