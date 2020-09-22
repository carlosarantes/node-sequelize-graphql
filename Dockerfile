FROM node:alpine

WORKDIR /usr/app

COPY ./package.json ./
RUN npm install && npm run gulp
COPY ./ ./

CMD [ "npm", "run", "dev" ]