FROM mysql:latest

ENV MYSQL_DATABASE=mydb \
    MYSQL_USER=rym \
    MYSQL_PASSWORD=password \
    MYSQL_ROOT_PASSWORD=root_password

COPY ./bdd.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
