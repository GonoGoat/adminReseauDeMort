FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    dovecot-core \
    dovecot-imapd \
    dovecot-pop3d \
    dovecot-lmtpd \
    nfs-common \
    vim \
    systemd \
    postfix \
    net-tools \
    telnet

COPY conf /etc/dovecot/conf
COPY auth /etc/dovecot/conf.d/auth
COPY mail /etc/dovecot/conf.d/mail
COPY master /etc/dovecot/conf.d/master
COPY ssl /etc/dovecot/conf.d/ssl
COPY main /etc/postfix/main



RUN cat /etc/dovecot/conf > /etc/dovecot/dovecot.conf \
&& cat /etc/dovecot/conf.d/auth > /etc/dovecot/conf.d/10-auth.conf \
&& cat /etc/dovecot/conf.d/ssl > /etc/dovecot/conf.d/10-ssl.conf \
&& cat /etc/dovecot/conf.d/master > /etc/dovecot/conf.d/10-master.conf \
&& cat /etc/dovecot/conf.d/mail > /etc/dovecot/conf.d/10-mail.conf \
&& cat /etc/postfix/main > /etc/postfix/main.cf 
#cat /etc/postfix/postfixconf > /etc/postfix/main.cf 


CMD /etc/init.d/dovecot start
#CMD postfix start

EXPOSE 143
EXPOSE 110
EXPOSE 25

