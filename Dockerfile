FROM tomcat:8.5

WORKDIR /usr/local/tomcat

COPY ./tomcat/webapps /usr/local/tomcat/webapps

RUN chmod -R 777 /usr/local/tomcat \	
	&& export DEBIAN_FRONTEND=noninteractive \
	&& apt-get install -y tzdata \
	&& ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime \
	&& dpkg-reconfigure --frontend noninteractive tzdata
