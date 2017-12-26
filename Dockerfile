FROM frolvlad/alpine-glibc

MAINTAINER W.Shito (@waterloo_jp)

RUN mkdir /tmp/workdir && cd /tmp/workdir

RUN apk --no-cache --update add --virtual build-dependencies \
    build-base \
    curl-dev \
    git \
    automake \
    autoconf

RUN apk --no-cache --update add libcurl

RUN git clone -b release https://github.com/roswell/roswell.git \
    && cd roswell \
    && sh bootstrap \
    && ./configure \
    && make \
    && make install \
    && cd / && rm -rf /tmp/workdir \
    && ros setup

RUN apk del build-dependencies

# Run SBCL
CMD ["ros", "run"]
