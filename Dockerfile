FROM tomcat:8.5

WORKDIR /usr/local/tomcat

RUN chmod -R 777 /usr/local/tomcat

RUN mkdir /usr/local/tomcat/webapps/judice