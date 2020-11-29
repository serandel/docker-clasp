FROM node:15-alpine

RUN mkdir /app && chown -R node.node /app

RUN npm install -g @google/clasp

USER node

VOLUME /home/node
VOLUME /app

WORKDIR /app

ENTRYPOINT ["clasp"]
