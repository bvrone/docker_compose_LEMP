#!/bin/sh

if ! [ -d /var/lib/mysql/wordpress ]; then
	./db_init.sh
fi

mysqld