FROM golang:1.12
MAINTAINER Alexey Maslov <alexey.y.maslov@gmail.com>

RUN set -ex \
    && apt-get update \
    && apt-get install -y git libpcre3 libpcre3-dev netcat gcc \
    && go get github.com/pressly/goose/cmd/goose
