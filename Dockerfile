# stage 1
FROM node:latest as node

WORKDIR /app

COPY /tmp/angular-project /app

RUN npm install --force

RUN npm run build 

# stage 2

FROM nginx:alpine

COPY --from=node /app/dist/angular-app /usr/share/nginx/html