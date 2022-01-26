all:
	docker-compose -f ./srcs/docker-compose.yml up -d
clean:
	docker-compose -f srcs/docker-compose.yml down
re:
	docker-compose -f ./srcs/docker-compose.yml --build -d
fclean: clean
	docker system prune -a -f
	sudo rm -rf /home/nmisfit/data/wordpress/*
	sudo rm -rf /home/nmisfit/data/mariadb/*