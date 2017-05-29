FROM tomcat:8.5
MAINTAINER Toshiaki Maki <makingx at gmail.com>
RUN rm -rf /usr/local/tomcat/webapps/ROOT \
		   /usr/local/tomcat/webapps/examples \
		   /usr/local/tomcat/webapps/manager \
		   /usr/local/tomcat/webapps/host-manager \
		   /usr/local/tomcat/webapps/docs \
		   /usr/local/tomcat/webapps/index.jsp
		  
EXPOSE 8080

COPY target/hello-legacy-tomcat-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war