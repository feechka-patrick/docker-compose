SUDO_PASSWORD = 3398

all:
	docker-compose -f ./srcs/docker-compose.yml up -d
clean:
	docker-compose -f ./srcs/docker-compose.yml down

re:	fclean all

fclean: clean
	@docker system prune -a -f
	@docker volume rm $$(docker volume ls -q)
	@echo $(SUDO_PASSWORD) | sudo -S rm -rf ./data/wordpress/*
	@echo $(SUDO_PASSWORD) | sudo -S rm -rf ./data/mariadb/*
	@echo "\n"