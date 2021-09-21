#!/bin/sh

#sleep 10000

if ! [ -d /var/lib/mysql/wordpress ]; then
    chown -R mysql:mysql /var/lib/mysql
    chmod 755 -R /var/lib/mysql
	./db_init.sh
fi
if ! [ -d /var/run/mysqld ]; then
    mkdir /var/run/mysqld
    mkfifo /var/run/mysqld/mysqld.sock
    chown -R mysql /var/run/mysqld
fi

exec "$@"

#mysqld