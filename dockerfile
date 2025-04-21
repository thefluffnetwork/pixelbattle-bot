FROM node:23-slim AS node-base


FROM node-base

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm ci

COPY src ./

CMD ["node", "."]
