FROM debian:buster

ARG DB_NAME
ARG DB_USER
ARG DB_PASSWORD
ARG DB_HOST

RUN apt-get update \
        && apt-get -y install php7.3 php-mysqli php-fpm mariadb-client

COPY ./www.conf /etc/php/7.3/fpm/pool.d

ADD https://ru.wordpress.org/latest-ru_RU.tar.gz /var/www/

RUN cd /var/www && tar -xzvf latest-ru_RU.tar.gz 
RUN rm -f /var/www/latest-ru_RU.tar.gz
RUN rm -f /var/www/wordpress/wp-config-sample.php 
RUN chown -R www-data:www-data /var/www/wordpress 
RUN chmod -R 775 /var/www/wordpress 

COPY ./wp-config.php ./var/www/wordpress/

# instal wp-cli and install wordpress
#ADD https://raw.github.com/wp-cli/builds/gh-pages/phar/wp-cli.phar /usr/local/bin/wp
#RUN chmod +x /usr/local/bin/wp

#RUN wp core install --path=var/www/wordpress/ \
# --allow-root --url=https://nmisfit.42.fr \
# --title=INCEPTION --admin_user=nmisift \
# --admin_password=password \
# --admin_email=nmisfit@42.ru
#
#RUN wp user create root root@42.ru \
#        --allow-root --path=/var/www/wordpress/ \
#        --role=author --user_pass=12345

EXPOSE 9000

RUN mkdir ./run/php/

CMD ./usr/sbin/php-fpm7.3 -F