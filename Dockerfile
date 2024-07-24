#Simple nodejs container
FROM node:20.15.1-alpine3.20

WORKDIR /app

COPY package*.json ./

# install project dependencies
RUN npm install

COPY . .

# build app for dev
RUN npm run dev

