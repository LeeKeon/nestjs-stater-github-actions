FROM node:14-alpine

WORKDIR /usr/src/app

COPY *.json ./

RUN npm install

RUN npm run build

CMD ["node", "dist/main"]