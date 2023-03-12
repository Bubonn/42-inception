FROM debian:buster

RUN apt-get update && \
	apt-get install mariadb-server -y && \
	apt-get clean

COPY ./tools/create_db.sh /
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

ENTRYPOINT ["bash", "create_db.sh"]

CMD ["mysqld_safe"]

EXPOSE 3306
