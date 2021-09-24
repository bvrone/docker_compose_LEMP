.PHONY:	all up stop down fclean re

all:
	sed -i "s/localhost/${USER}.42.fr/" "etc/hosts"
	docker-compose -f ./srcs/docker-compose.yml build
	docker-compose -f ./srcs/docker-compose.yml up -d

up:
	docker-compose -f ./srcs/docker-compose.yml up

stop:
	docker-compose -f ./srcs/docker-compose.yml stop

down:
	docker-compose -f ./srcs/docker-compose.yml down

fclean: down
	sudo docker rmi -f $(sudo docker images -qa)
	sudo docker rm -f $(sudo docker ps -qa)
	sudo docker rm -f $(sudo docker ps -ls)
	sudo docker volume rm $(sudo docker volume ls -q)
	sudo docker system prune -a --volume
	sudo docker system prune -a --force
	sudo rm -rf -y /home/${USER}/data/db_data/*
	sudo rm -rf -y /home/${USER}/data/wp_data/*

re:	fclean	all