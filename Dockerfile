#stage 1

FROM nginx:alpine

WORKDIR /root/angular-app
 
COPY ./angular-app/dist/angular-app /usr/share/nginx/html

Expose 4200

CMD ["nginx", "-g", "deamon off;"]
