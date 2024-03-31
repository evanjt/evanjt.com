FROM nginx:stable-alpine3.17-slim

WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY ./app/ .
ENTRYPOINT ["nginx", "-g", "daemon off;"]
