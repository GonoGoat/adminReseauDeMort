FROM ubuntu:latest

RUN apt-get update && apt-get install -y mysql-server
#RUN service mysql start
#RUN mysqladmin root password "Ephec123"
#RUN mysqladmin -u root -pEphec123 create mailserver

COPY ./* /home/

#RUN mysql -u root -pEphec123 < ~/create.sql
#RUN mysql -u root -pEphec123 < ~/values.sql

EXPOSE 3306


