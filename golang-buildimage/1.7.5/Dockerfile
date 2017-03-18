FROM golang:1.7.5-wheezy
MAINTAINER Alexey Maslov <alexey.y.maslov@gmail.com>

RUN set -ex                                             \
    && apt-get update                                   \
    && apt-get install -y git libpcre3 libpcre3-dev gcc \
    && go get github.com/constabulary/gb/...
