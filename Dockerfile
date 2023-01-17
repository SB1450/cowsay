FROM node:8.11-alpine

WORKDIR /app

COPY ./src/package.json ./
COPY ./src/package-lock.json ./

RUN npm i
COPY ./src .

ENTRYPOINT ["node","index.js"]
