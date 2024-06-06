FROM debian:bookworm

RUN apt -y update && apt -y upgrade

RUN apt-get install -y php8.2-fpm php8.2-mysql php8.2-curl mariadb-client && apt install curl -y

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp \
        && chmod +x /usr/local/bin/wp

RUN mkdir -p /var/www/html

COPY ./tools/wp.sh /

RUN chmod 777 /wp.sh

CMD ["sh", "/wp.sh"]