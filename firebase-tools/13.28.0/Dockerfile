FROM node:lts-alpine

ENV PATH=/home/node/.npm-global/bin:$PATH NPM_CONFIG_PREFIX=/home/node/.npm-global
COPY . .

RUN mkdir /home/node/.npm-global \
    && apk add bash openjdk11 jq \
    && npm i -g firebase-tools@13.28.0 \
    && ./install.sh

ENTRYPOINT ["./entrypoint.sh"]
