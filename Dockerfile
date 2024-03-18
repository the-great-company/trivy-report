FROM openjdk:slim

WORKDIR /app

RUN apt-get -y update 
RUN apt-get -y install tcpdump curl jq iputils-ping dnsutils traceroute gnupg git

RUN curl -sL https://deb.nodesource.com/setup_20.x  | bash -

RUN apt-get -y install nodejs

RUN git clone "https://github.com/Ealenn/Echo-Server.git"

WORKDIR /app/Echo-Server

RUN npm install