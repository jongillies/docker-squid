FROM phusion/passenger-customizable:0.9.15
MAINTAINER Jon Gillies <supercoder@gmail.com>

# Cloned from https://github.com/sameersbn/docker-squid

RUN apt-get update \
    && apt-get install -y squid3 \
    && mv /etc/squid3/squid.conf /etc/squid3/squid.conf.dist \
    && rm -rf /var/lib/apt/lists/*

ADD squid.conf /etc/squid3/squid.conf

ADD start.sh /start.sh

EXPOSE 3128

VOLUME "/var/spool/squid3"

CMD "/start.sh