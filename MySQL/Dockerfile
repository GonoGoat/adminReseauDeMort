FROM ubuntu:latest

RUN apt-get install mysql-server
RUN mysqladmin -u root -p create mailserver

COPY ./* ~

RUN mysql -u root -pEphec123 < ~/create.sql
RUN mysql -u root -pEphec123 < ~/values.sql

EXPOSE 3306


