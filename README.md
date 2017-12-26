# wshito/roswell-base

The very minimum docker image of Roswell on Alpine Linux.

Docker Hub: [wshito/roswell-base](https://hub.docker.com/r/wshito/roswell-base/)

### Included in This Image:

- Roswell with sbcl-bin
- glibc, libcurl
- Alpine Linux

### Install:

`$ docker pull wshito/roswell-base`

### Usage:

The below will run the default SBCL.

`$ docker run -it --rm wshito/roswell-base`

You can start with the shell as following.

`$ docker run -it --rm wshito/roswell-base sh`
