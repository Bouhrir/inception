#!/bin/bash

service mariadb start 

# mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '123';"
mysql -e "CREATE DATABASE IF NOT EXISTS $DB_NAME ;"
mysql -e "CREATE USER IF NOT EXISTS '$DB_USER'@'locahost' IDENTIFIED BY '$DB_PASS';"
mysql -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASSWORD';"
mysql -e "FLUSH PRIVILEGES;"

service mariadb stop

exec mysqld_safe