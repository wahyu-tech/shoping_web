# use base image nginx
# Gunakan image Nginx resmi sebagai base image
FROM nginx:alpine

# Hapus direktori default Nginx agar bersih
RUN rm -rf /etc/nginx/conf.d/*

# Salin semua file HTML statis Anda ke direktori yang dilayani Nginx
# Pastikan folder 'html' ada di direktori yang sama dengan Dockerfile Anda
COPY html/ /usr/share/nginx/html

# Ekspos port 80 agar bisa diakses dari luar container
EXPOSE 80

# Perintah default untuk menjalankan Nginx
CMD ["nginx", "-g", "daemon off;"]