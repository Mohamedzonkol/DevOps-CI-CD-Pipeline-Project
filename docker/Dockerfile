FROM ubuntu:latest

RUN apt-get install java -y

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat

ADD https://dlcdn.apache.org/tomcat/tomcat-9/v10.1.28/bin/apache-tomcat-10.1.28.tar.gz /opt/tomcat

RUN tar xvfz apache*.tar.gz

RUN mv apache-tomcat-10.1.28/* /opt/tomcat 
RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local//tomcat/webapps
COPY ./webapp.war /usr/local/tomcat/webapps
EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
