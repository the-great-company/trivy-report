FROM adoptopenjdk/openjdk11:x86_64-ubuntu-jre-11.0.22_7

WORKDIR /app

RUN apt-get -y update 
RUN apt-get -y install tcpdump curl jq iputils-ping dnsutils traceroute gnupg git

RUN curl -sL https://deb.nodesource.com/setup_20.x  | bash -

RUN apt-get -y install nodejs

RUN git clone "https://github.com/Ealenn/Echo-Server.git"

WORKDIR /app/Echo-Server

RUN npm install