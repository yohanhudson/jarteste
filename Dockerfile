FROM mysql

ENV MYSQL_ROOT_PASSWORD=temp123

COPY ./script-tabelasV2.sql /docker-entrypoint-initdb.d/
