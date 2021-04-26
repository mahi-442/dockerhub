FROM ubuntu:18.04

LABEL NAME="HUE"

RUN apt update
RUN apt install apache2 -y

COPY templatemo_543_breezed /var/www/html

EXPOSE 80

CMD apachectl -D FOREGROUND
