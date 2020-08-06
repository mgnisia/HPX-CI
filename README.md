![](https://img.shields.io/docker/pulls/mgnisia/spack-python)

# Spack Container for HPX CI Testing

This repo contains a `Dockerfile` which can be used as a container for testing in a CI or local environment.

Currently the following python environments are include:

- Python 3.5
- Python 3.6
- Python 3.7
- Python 3.8

Import to mention is also that for the Python 3.5 version the openssl dependency works out of the box. Python3.5 requires an `openssl` version of lower than `1.1.0`.

## Docker Hub

```shell
docker pull mgnisia/spack-python:latest
```
