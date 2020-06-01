FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y \apache2 \nano
RUN apt-get install -y apache2-utils
ADD wt1-9.ephec-ti.be.conf /etc/apache2/sites-available
RUN mkdir /var/www/wt1-9.ephec-ti.be
ADD b2b /var/www/wt1-9.ephec-ti.be/b2b
ADD www /var/www/wt1-9.ephec-ti.be/www
RUN a2dissite 000-default
RUN a2ensite wt1-9.ephec-ti.be.conf
EXPOSE 80
ENTRYPOINT ["apache2ctl"]
CMD ["-DFOREGROUND"]
# Commande :
#	(sudo) docker run -it -p 80:80 --name=<...>  dockermaispaslouvrier/repo_admin_sys:apache
