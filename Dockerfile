FROM ubuntu
RUN apt-get update
RUN apt-get -y install apache2
COPY target/*.war /usr/local/tomcat/webapps/
ENTRYPOINT apachectl -D
ENV name DEV
