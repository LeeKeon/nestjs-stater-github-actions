#FROM node:14-alpine
#WORKDIR /usr/src/app
#COPY * ./
#RUN npm install
#RUN npm run build
#CMD ["node", "dist/main"]

FROM node:14-alpine AS binary-build
WORKDIR /usr/src/app
COPY * ./
RUN npm install
RUN npm run build

FROM node:14-alpine AS docker-build
COPY --from=build /usr/src/app/dist /usr/src/app/dist
COPY --from=build /usr/src/app/node_modules /usr/src/app/node_modules
ENTRYPOINT ["node","/usr/src/app/dist/main"]
