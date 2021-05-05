#Simple nodejs container
FROM node:lts-alpine

WORKDIR /app

COPY package*.json ./

# install project dependencies
RUN npm install

COPY . .

# build app for dev
RUN npm run dev

