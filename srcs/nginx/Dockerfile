FROM		debian:buster
RUN			apt	update && apt install -y	\
				nginx						\
				vim							\
			&& rm -rf /var/lib/apt/lists/*
RUN			rm /etc/nginx/sites-enabled/default
EXPOSE		443
WORKDIR		/usr/share/nginx/logs/
#RUN			touch error.log && touch access.log && chmod 750 *.log
#RUN			mkdir -p /run/php/ && touch /run/php/php7.3-fpm.pid
ENTRYPOINT	["nginx", "-g daemon off;"]