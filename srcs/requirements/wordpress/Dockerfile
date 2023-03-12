FROM debian:buster

RUN apt-get update && \
	apt-get install -y \
		php \
		php-mysql \
		php-fpm \
		wget && \
 	apt-get clean

COPY tools/create_wordpress.sh .
COPY conf/wp-config.php .
COPY conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

RUN mkdir -p /run/php/

ENTRYPOINT ["bash", "create_wordpress.sh"]

EXPOSE 3306 9000

CMD ["php-fpm7.3", "-F"]
