FROM debian:buster

RUN apt-get update \
        && apt-get -y install php7.3 php-mysqli php-fpm mariadb-client

COPY ./www.conf /etc/php/7.3/fpm/pool.d

ADD https://ru.wordpress.org/wordpress-5.7.2-ru_RU.tar.gz /var/www/

RUN cd /var/www && tar -xzvf wordpress-5.7.2-ru_RU.tar.gz \
        && rm -f /var/www/wordpress-5.7.2-ru_RU.tar.gz \
        && rm -f /var/www/wordpress/wp-config-sample.php \
        && chown -R www-data:www-data /var/www/wordpress && \
        chmod -R 775 /var/www/wordpress 
    
COPY ./wp-config.php ./var/www/wordpress/
COPY ./index.html ./var/www/wordpress/

EXPOSE 9000

RUN mkdir ./run/php/
CMD ./usr/sbin/php-fpm7.3 -F