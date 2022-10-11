FROM node:14-alpine

WORKDIR opt

RUN npm install
COPY . .
RUN npm run build

CMD ["node", "dist/main"]