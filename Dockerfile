FROM java
MAINTAINER NguyenDangKhoa

RUN curl -O http://archive.apache.org/dist/tomcat/tomcat-7/v7.0.55/bin/apache-tomcat-7.0.55.tar.gz
RUN tar xzf apache-tomcat-7.0.55.tar.gz
CMD rm -rf apache-tomcat-7.0.55/webapps/ROOT
#ADD target/cicddemo.war apache-tomcat-7.0.55/webapps/
#CMD mv apache-tomcat-7.0.55/webapps/cicddemo.war apache-tomcat-7.0.55/webapps/ROOT.war 
ADD sample.war apache-tomcat-7.0.55/webapps/
CMD mv apache-tomcat-7.0.55/webapps/sample.war apache-tomcat-7.0.55/webapps/ROOT.war 
CMD apache-tomcat-7.0.55/bin/startup.sh && tail -f apache-tomcat-7.0.55/logs/catalina.out
EXPOSE 8080
