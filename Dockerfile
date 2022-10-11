FROM node:14-alpine

RUN mv dist /opt

CMD ["node", "/opt/dist/main"]