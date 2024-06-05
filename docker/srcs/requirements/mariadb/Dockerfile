FROM debian:bookworm

RUN apt-get update && apt-get install -y mariadb-server

RUN mkdir -p /var/run/mysqld

RUN chmod 777 /var /var/run /var/run/mysqld /run/mysqld /var/lib/mysql

COPY /tools/sql.sh /

RUN chmod +x /sql.sh

ENTRYPOINT ["sh", "/sql.sh"]

CMD ["mariadbd", "--user=mysql", "--bind-address=0.0.0.0"]