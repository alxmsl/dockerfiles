FROM golang:1.7.5-alpine
MAINTAINER Alexey Maslov <alexey.y.maslov@gmail.com>

RUN set -ex                                 \
    && apk add --no-cache --virtual git     \
    && go get github.com/constabulary/gb/...
