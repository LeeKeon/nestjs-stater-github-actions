FROM node:14-alpine

RUN ls -al
RUN pwd

RUN npm install
COPY . .
RUN npm run build

CMD ["node", "dist/main"]