FROM node:14-alpine

WORKDIR /usr/src/app

COPY * ./

RUN pwd

RUN ls -al

CMD ["node", "dist/main"]
