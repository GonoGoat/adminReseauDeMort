FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y \apache2 \nano
RUN apt-get install -y apache2-utils
ADD intranet.wt1-9.ephec-ti.be.conf /etc/apache2/sites-available
ADD woodytoys /var/www/woodytoys
RUN a2dissite 000-default
RUN a2ensite intranet.wt1-9.ephec-ti.be.conf
RUN service apache2 restart
EXPOSE 80
ENTRYPOINT ["apache2ctl"]
CMD ["-DFOREGROUND"]
