FROM tomcat:7-jre8

MAINTAINER "Rob Tompkins <chtompki@gmail.com>"

ADD setenv.sh /usr/local/tomcat/bin/
ADD tomcat-users.xml /usr/local/tomcat/conf/

RUN wget https://github.com/chtompki/spring-jersey-example/blob/master/spring-jersey-example.war?raw=true -O /usr/local/tomcat/webapps/spring-jersey-example.war
