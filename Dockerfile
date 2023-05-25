FROM node:18-alpine

WORKDIR /usr/src/app
COPY package.json ./
COPY yarn.lock ./
COPY layout.js ./
COPY pods-local.json ./
RUN yarn install
CMD [ "node", "/usr/src/app/layout.js" ]