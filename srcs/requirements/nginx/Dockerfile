FROM debian:buster

RUN apt-get update && apt-get install -y \
	nginx \
	openssl && \
	apt-get clean

RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out \
	/etc/ssl/jdubilla.42.fr.pem -keyout /etc/ssl/jdubilla.42.fr.key -subj \
	"/C=FR/ST=FR/L=FR/O=FR/OU=jdubilla/CN=jdubilla.42.fr"

COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 9000

CMD ["nginx", "-g", "daemon off;"]
