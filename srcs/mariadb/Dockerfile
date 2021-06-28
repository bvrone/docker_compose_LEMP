FROM        debian:buster
RUN         apt update && apt install -y mariadb-server vim \
			&& rm -rf /var/lib/apt/lists/*
WORKDIR		"/setups/"
COPY		["srcs/", "/setups/"]
RUN			chmod +x container_setup.sh
RUN			chmod +x db_init.sh
ENV			MYSQL_PASS="55ca21"
ENV			WP_PASS="fcb1e"
EXPOSE		3306
ENTRYPOINT	["/setups/container_setup.sh"]