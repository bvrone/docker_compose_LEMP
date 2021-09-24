.PHONY:	all up stop down fclean re

all:
	sudo mkdir /home/${USER}/data/db_data
	sudo mkdir /home/${USER}/data/wp_data
	sudo sed -i "s/localhost/${USER}.42.fr/" "/etc/hosts"
	docker-compose -f ./srcs/docker-compose.yml build
	docker-compose -f ./srcs/docker-compose.yml up -d

up:
	docker-compose -f ./srcs/docker-compose.yml up

stop:
	docker-compose -f ./srcs/docker-compose.yml stop

down:
	docker-compose -f ./srcs/docker-compose.yml down

fclean: down
	sudo docker system prune -a -f --volumes
	sudo docker system prune -a -f
	sudo rm -rf /home/${USER}/data/db_data/
	sudo rm -rf /home/${USER}/data/wp_data/

re:	fclean	all
