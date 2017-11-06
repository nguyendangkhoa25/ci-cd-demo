FROM java
MAINTAINER NguyenDangKhoa

RUN curl -O http://archive.apache.org/dist/tomcat/tomcat-7/v7.0.55/bin/apache-tomcat-7.0.55.tar.gz
RUN tar xzf apache-tomcat-7.0.55.tar.gz
RUN rm -rf apache-tomcat-7.0.55/webapps/ROOT
ADD taget/cicddemo.war apache-tomcat-7.0.55/webapps/
RUN mv apache-tomcat-7.0.55/webapps/cicddemo.war apache-tomcat-7.0.55/webapps/ROOT.war 
CMD apache-tomcat-7.0.55/bin/startup.sh
EXPOSE 8071