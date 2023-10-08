FROM node:alpine
WORKDIR /usr/src/app
COPY package*.json .
RUN npm ci
COPY . .
WORKDIR /app
CMD [ "npm","start" ]