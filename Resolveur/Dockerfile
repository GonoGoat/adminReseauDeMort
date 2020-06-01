FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y \bind9 \nano
ADD * /home/
RUN cat /home/named.conf.local > /etc/bind/named.conf.local \
	&& cat /home/named.conf.options > /etc/bind/named.conf.options \
	&& cat /home/resolv.conf > /etc/resolv.conf
RUN service bind9 restart
EXPOSE 53 53/udp

#Commande : (sudo) docker run -it --name=<..> <image>
