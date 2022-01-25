docker-compose -f srcs/docker-compose.yml down
docker rmi -f $(docker images -qa)
docker volume rm $(docker volume ls -q)
docker system prune -a -f
sudo rm -rf /home/nmisfit/data/wordpress/*
sudo rm -rf /home/nmisfit/data/mariadb/*
