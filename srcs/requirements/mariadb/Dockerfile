FROM debian:buster

ARG DB_NAME 
ARG DB_USER
ARG DB_USER_PASSWORD
ARG DB_ROOT_PASSWORD 

#ENV DB_ROOT_PASSWORD=${DB_ROOT_PASSWORD}

RUN apt-get update 
RUN apt-get install mariadb-server -y

COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./createdb.sql /
COPY ./wordpress.sql /

RUN service mysql start && mysql < createdb.sql \
    && rm -f createdb.sql

RUN echo \"$DB_ROOT_PASSWORD\"

RUN service mysql start && mysql -p"$MYSQL_ROOT_PASSWORD" wordpress < wordpress.sql \
    && rm -f wordpress.sql

EXPOSE 3306

CMD /usr/bin/mysqld_safe