FROM debian:buster
RUN apt-get update 
RUN apt-get install mariadb-server -y

COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./createdb.sql /

RUN service mysql start && mysql < createdb.sql \
    && rm -f createdb.sql

EXPOSE 3306

CMD /usr/bin/mysqld_safe