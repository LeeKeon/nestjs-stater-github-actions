FROM node:14-alpine

WORKDIR /usr/src/app

RUN ls -al

RUN pwd

COPY * ./

RUN ls -al

RUN pwd

RUN npm install

RUN npm run build

CMD ["node", "dist/main"]
