FROM debian:bookworm

RUN apt-get update && apt-get install -y nginx

RUN apt-get install -y openssl

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:4096 -keyout  /etc/nginx/ssl/miroka.key -subj "/C=MA/ST=Martil/L=Martil/O=42Network/OU=1337/CN=obouhrir.42.fr" -out /etc/nginx/ssl/miroka.crt

COPY conf/nginx.conf /etc/nginx/conf.d/

CMD ["nginx", "-g", "daemon off;"]
