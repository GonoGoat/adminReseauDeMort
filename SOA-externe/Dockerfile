FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y \bind9 \nano
ADD * /home/
ADD zones /etc/bind/zones
RUN cat /home/hosts > /etc/hosts \
	&& cat /home/named.conf.local > /etc/bind/named.conf.local \
	&& cat /home/named.conf.options > /etc/bind/named.conf.options \


EXPOSE 53 53/udp 53/tcp


#Commande :
# (sudo) docker run -it --name=<...> -h ns gonogoat/admin1-9:soai
