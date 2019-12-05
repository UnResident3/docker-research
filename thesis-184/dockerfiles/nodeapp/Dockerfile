FROM node:10.17.0-alpine

WORKDIR /usr/src/app

VOLUME ["/usr/src/app"]

RUN npm install

EXPOSE 80 3000

CMD [ "node", "./app/index.js"]