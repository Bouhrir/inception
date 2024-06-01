FROM debian:bookworm

RUN apt-get update && apt-get install -y nginx

RUN apt-get install -y openssl

RUN mkdir -p /etc/nginx/ssl

RUN openssl genrsa -out /etc/nginx/ssl/miroka.key 2048

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout  /etc/nginx/ssl/miroka.key -subj "/C=MA/ST=Martil/L=Martil/O=42Network/OU=1337/CN=obouhrir.42.fr" -out /etc/nginx/ssl/miroka.crt

COPY conf/index.html /var/www/html

COPY conf/nginx.conf /etc/nginx/conf.d/

CMD ["nginx", "-g", "daemon off;"]
