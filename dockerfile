# Gunakan image Nginx resmi
FROM nginx:alpine

# Hapus konfigurasi default Nginx
RUN rm -rf /usr/share/nginx/html/*

# Salin file website ke direktori html nginx
COPY . /usr/share/nginx/html

# Ekspos port 80
EXPOSE 80

# Jalankan Nginx
# CMD ["nginx", "-g", "daemon off;"]