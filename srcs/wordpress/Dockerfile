FROM		debian:buster
RUN			apt update && apt install -y php7.3-fpm php-mysql php-mbstring vim wget\
			&& rm -rf /var/lib/apt/lists/*
RUN			mkdir /var/run/php /usr/log
WORKDIR		/var/www/wordpress
RUN			chown -R www-data:www-data /var/www/wordpress
ADD         ["https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar", "./"] 
#RUN         wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN         chmod +x wp-cli.phar
RUN         mv wp-cli.phar /usr/local/bin/wp
RUN         wp core download --allow-root
COPY        ["./srcs/wp-config.php", "./"]
#COPY        ["./srcs/wp-config.php", "/var/tmp/"]
COPY        ["./container_setup.sh", "./"]
RUN			chmod +x container_setup.sh
CMD     	["/usr/sbin/php-fpm7.3", "--nodaemonize"]
ENTRYPOINT  ["./container_setup.sh"]