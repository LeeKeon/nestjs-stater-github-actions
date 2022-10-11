FROM node:14-alpine

RUN npm install
RUN npm run build

CMD ["node", "/opt/dist/main"]