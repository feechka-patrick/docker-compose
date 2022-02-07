FROM debian:buster

ARG DB_NAME 
ARG DB_USER
ARG DB_USER_PASSWORD
ARG DB_ROOT_PASSWORD 

RUN apt-get update \
&& apt-get install mariadb-server -y

COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/createdb.sql /
COPY ./tools/wordpress.sql /
COPY ./tools/edit-env.sh ./

RUN bash ./edit-env.sh

RUN service mysql start && mysql < createdb.sql \
&& mysql -u root -p"$DB_ROOT_PASSWORD" wordpress < wordpress.sql 

EXPOSE 3306

CMD /usr/bin/mysqld_safe