#Simple nodejs container
FROM node:14.17.6-alpine3.11

WORKDIR /app

COPY package*.json ./

# install project dependencies
RUN npm install

COPY . .

# build app for dev
RUN npm run dev

