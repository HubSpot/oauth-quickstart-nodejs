FROM node:8.15.1-alpine

WORKDIR /usr/src/oauth-quickstart-nodejs

# Install
COPY ./index.js ./
COPY ./package.json ./
RUN npm install

ENV CLIENT_ID=""
ENV CLIENT_SECRET=""
ENV SCOPE=""

EXPOSE 3000

ENTRYPOINT [ "node", "index.js" ]
