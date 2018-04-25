FROM mysql:5.5

LABEL maintainer="Coda Global"
LABEL global.coda.version="0.0.1"

ENV MYSQL_RANDOM_ROOT_PASSWORD=yes
ENV MYSQL_USER=drupal
ENV MYSQL_PASSWORD=${DRUPAL_DB_PASSWORD}
ENV MYSQL_DATABASE=drupal

VOLUME /var/lib/mysql

COPY coda.cnf /etc/mysql/conf.d/coda.cnf
