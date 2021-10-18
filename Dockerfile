FROM nginx:alpine

WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY . .
RUN ["ls", "-l"]
ENTRYPOINT ["nginx", "-g", "daemon off;"]
