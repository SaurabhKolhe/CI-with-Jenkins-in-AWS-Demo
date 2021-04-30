FROM ubuntu
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get -y install apache2
COPY project/target/*.war /usr/local/tomcat/webapps/
ENTRYPOINT apachectl -D
ENV name DEV
