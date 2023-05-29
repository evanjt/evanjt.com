FROM nginx:alpine

WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY ./app/ .
ENTRYPOINT ["nginx", "-g", "daemon off;"]
