FROM node:15-alpine

RUN mkdir /app && chown -R node.node /app

RUN npm install -g @google/clasp
RUN npm install -g @types/google-apps-script
RUN npm install -g @types/gapi.client.gmail

USER node

VOLUME /home/node
VOLUME /app

WORKDIR /app

ENTRYPOINT ["clasp"]
