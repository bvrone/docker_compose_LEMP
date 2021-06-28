#!/bin/bash

echo "CREATE DATABASE IF NOT EXISTS wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;" > mysql_setup.sql
echo "GRANT ALL ON wordpress.* TO 'wp_bvrone'@'localhost' IDENTIFIED BY '${WP_PASS}';" >> mysql_setup.sql
echo "DELETE FROM mysql.user WHERE User='';" >> mysql_setup.sql
echo "DROP DATABASE IF EXISTS test;" >> mysql_setup.sql
echo "DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%';" >> mysql_setup.sql
echo "SET PASSWORD FOR root@localhost=PASSWORD('${MYSQL_PASS}');" >> mysql_setup.sql
echo "FLUSH PRIVILEGES;" >> mysql_setup.sql

/etc/init.d/mysql start
mysql < mysql_setup.sql

sed -i "s/password =/password = $MYSQL_PASS/" /etc/mysql/debian.cnf

sleep 5

/etc/init.d/mysql stop