FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y apache2-utils
#COPY index.html /var/www/html/
EXPOSE 80
ENTRYPOINT ["apache2ctl"]
CMD ["-DFOREGROUND"]
# Commande :
#	(sudo) docker run -it -p 80:80 --name=<...>  dockermaispaslouvrier/repo_admin_sys:apache
