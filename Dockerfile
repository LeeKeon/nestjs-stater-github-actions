FROM node:14-alpine

RUN RUN npm install
COPY . .
RUN npm run build

CMD ["node", "dist/main"]