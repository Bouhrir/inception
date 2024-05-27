FROM debian:bookworm

RUN apt-get update && apt-get install -y nginx

RUN apt-get install -y openssl

RUN mkdir -p /etc/nginx/ssl

RUN openssl genrsa -out /etc/nginx/ssl/miroka.key 2048

# RUN openssl req -new -key /etc/nginx/ssl/miroka.key -out /etc/nginx/ssl/miroka.csr

COPY conf/index.html /var/www/html

COPY conf/nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
