SUDO_PASSWORD = 3398

all:
	mkdir -p /home/nmisfit/data/wordpress
	mkdir -p /home/nmisfit/data/mariadb
	docker-compose -f ./srcs/docker-compose.yml up -d
	
clean:
	docker-compose -f ./srcs/docker-compose.yml down

nginx:
	docker-compose -f ./srcs/docker-compose.yml up --no-deps -d --build nginx

mariadb:
	@echo $(SUDO_PASSWORD) | sudo -S rm -Rf /home/nmisfit/data/mariadb/*
	docker-compose -f ./srcs/docker-compose.yml up --no-deps -d --build mariadb

wordpress:
	@echo $(SUDO_PASSWORD) | sudo -S rm -Rf /home/nmisfit/data/wordpress/*
	docker-compose -f ./srcs/docker-compose.yml up --no-deps -d --build wordpress

inginx:
	docker exec -it $$(docker ps -qf name=nginx) bin/bash
imariadb:
	docker exec -it $$(docker ps -qf name=mariadb) bin/bash
iwordpress:
	docker exec -it $$(docker ps -qf name=wordpress) bin/bash

re:	fclean all

fclean: clean
	@docker system prune -a -f
	@docker volume rm $$(docker volume ls -q)
	@echo $(SUDO_PASSWORD) | sudo -S rm -rf /home/nmisfit/data/wordpress/*
	@echo $(SUDO_PASSWORD) | sudo -S rm -rf /home/nmisfit/data/mariadb/*
	@echo 