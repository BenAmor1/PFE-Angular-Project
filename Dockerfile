#stage 1

FROM node:latest as node

WORKDIR /root/angular-app

RUN pwd

COPY . .

RUN npm install --force

RUN npm run build 

#stage 2

FROM nginx:alpine

COPY --from=node /root/angular-app/dist/angular-app /usr/share/nginx/html