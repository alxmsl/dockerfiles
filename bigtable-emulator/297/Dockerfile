FROM google/cloud-sdk:297.0.1-alpine
MAINTAINER Alexey Maslov <alexey.y.maslov@gmail.com>

RUN apk add --update --no-cache openjdk8-jre \
    && gcloud components install bigtable beta --quiet

COPY start.sh .

ENTRYPOINT ["./start.sh"]
VOLUME /opt/data
EXPOSE 8080
