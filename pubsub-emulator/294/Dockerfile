FROM google/cloud-sdk:294.0.0-alpine
MAINTAINER Alexey Maslov <alexey.y.maslov@gmail.com>

RUN apk add --update --no-cache openjdk8-jre \
    && gcloud components install pubsub-emulator beta --quiet

COPY start.sh .

ENTRYPOINT ["./start.sh"]
VOLUME /opt/data
EXPOSE 8080
