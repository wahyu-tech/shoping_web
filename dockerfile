
# Gunakan image Nginx resmi
FROM nginx:alpine

COPY . /usr/share/nginx/html

# Ekspos port 80
EXPOSE 80

# Jalankan Nginx
CMD ["nginx", "-g", "daemon off;"]

