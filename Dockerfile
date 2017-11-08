FROM tomcat:8.0.20-jre8

# set java-demo
LABEL java-demo "nguyendangkhoa25@gmail.com"

WORKDIR /var/lib/jenkins/workspace/ci-cd-demo

#Clean old folder
RUN sed -i 's/port="8080"/port="8071"/' /usr/local/tomcat/conf/server.xml 

RUN mkdir -p /usr/local/tomcat/webapps/ROOT

#Copy war file to tomcat root
RUN cat /var/lib/jenkins/.dockercfg
RUN \cp /var/lib/jenkins/workspace/ci-cd-demo/SpringSecurityRememberMeAnnotationExample/target/maven-demo.war /usr/local/tomcat/webapps/demo.war

RUN chmod +x /usr/local/tomcat/webapps/demo.war

# tell docker what port to expose
EXPOSE 8071