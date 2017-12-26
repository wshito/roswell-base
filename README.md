# wshito/roswell-base

The very minimum docker image of Roswell on Alpine Linux.

Docker Hub: [wshito/roswell-base](https://hub.docker.com/r/wshito/roswell-base/)

See [wshito/sbcl-swank](https://hub.docker.com/r/wshito/sbcl-swank/) for the extension of this image with Swank server activated.

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

In order to stop the WARNING message from SBCL due to the seccomp constraint, download [docker-sbcl-seccomp.json](https://raw.githubusercontent.com/daewok/slime-docker/master/resources/docker-sbcl-seccomp.json) file and add the `--security-opt` option when you invoke `docker run` as follows.

`$ docker run -it --rm --security-opt seccomp=dockers/docker-sbcl-seccomp.json wshito/roswell-base`
