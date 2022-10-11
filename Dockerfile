FROM node:14-alpine

RUN mkdir /opt

RUN mv dist /opt

CMD ["node", "/opt/dist/main"]