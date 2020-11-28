FROM node:15-alpine

RUN mkdir /app
RUN npm install -g @google/clasp

USER node
VOLUME /home/node

WORKDIR /app

ENTRYPOINT ["clasp"]
