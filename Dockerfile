FROM node:slim

WORKDIR /api

COPY package.json yarn.lock ./

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "yarn", "start" ]