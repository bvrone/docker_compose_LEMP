FROM		debian:buster
RUN			apt update && apt install -y php7.3-fpm php-mysql php-mbstring vim\
			&& rm -rf /var/lib/apt/lists/*
RUN			mkdir /var/run/php
WORKDIR		/var/www/wordpress
RUN			chown -R www-data:www-data /var/www/wordpress
WORKDIR		/usr/log
ENTRYPOINT	["/usr/sbin/php-fpm7.3", "--nodaemonize"]