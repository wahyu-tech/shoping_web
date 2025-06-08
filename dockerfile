# use base image nginx
FROM nginx:alpine

# copy from eflyer-master all file source into nginx default public pages
COPY . usr/share/nginx/html

EXPOSE 80