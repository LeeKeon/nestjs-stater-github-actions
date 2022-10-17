FROM node:14-alpine

WORKDIR /usr/src/app

COPY dist ./

CMD ["node", "dist/main"]
