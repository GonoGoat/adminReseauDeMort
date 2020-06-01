FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install -y \
	curl \net-tools \
	iputils-ping \nmap \
	dnsutils \alpine \nano
	
COPY resolv.conf /home/resolv.conf
RUN cat /home/resolv.conf > /etc/resolv.conf
