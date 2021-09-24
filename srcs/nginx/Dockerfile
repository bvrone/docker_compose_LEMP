FROM		debian:buster
RUN			apt	update && apt install -y	\
				nginx						\
				openssl						\
			&& rm -rf /var/lib/apt/lists/*
RUN			chown -R www-data:www-data /etc/nginx
RUN			rm /etc/nginx/sites-enabled/default
RUN			mkdir /etc/nginx/ssl
RUN			chown -R www-data:www-data /etc/nginx/ssl
RUN			chown -R www-data:www-data /var/www
RUN			openssl req -x509 -nodes -subj "/C=RU/L=Kazan/O=21School/OU=IT Department/CN=bvrone.42.fr" \
							-days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/bvrone.42.fr.key -out /etc/nginx/ssl/bvrone.42.fr.crt
WORKDIR		/usr/share/nginx/logs/
#RUN			touch error.log && touch access.log && chmod 750 *.log
#RUN			mkdir -p /run/php/ && touch /run/php/php7.3-fpm.pid
EXPOSE		443
ENTRYPOINT	["nginx", "-g daemon off;"]