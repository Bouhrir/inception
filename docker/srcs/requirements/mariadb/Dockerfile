FROM debian:bookworm

RUN apt-get update && apt-get install -y mariadb-server

# COPY conf/mariadb.conf /etc/mysql/mariadb.conf.d/

COPY /tools/sql.sh /

RUN chmod +x /sql.sh

EXPOSE 3309

CMD ["sh", "/sql.sh"]