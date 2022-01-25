all:
	docker-compose -f ./srcs/docker-compose.yml up -d
clean:
	docker-compose -f srcs/docker-compose.yml down
re:
	docker-compose -f ./srcs/docker-compose.yml --build -d
fclean: clean
	docker rmi -f $(docker images -qa)
	docker volume rm $(docker volume ls -q)
	docker system prune -a -f