FROM tomcat:8.0.20-jre8

# set java-demo
LABEL java-demo "nguyendangkhoa25@gmail.com"

#Clean old folder
RUN sed -i 's/port="8080"/port="8071"/' /usr/local/tomcat/conf/server.xml 

RUN mkdir -p /usr/local/tomcat/webapps/ROOT

#Copy war file to tomcat root
COPY SpringHibernateExample/target/ROOT.war /usr/local/tomcat/webapps/demo.war

RUN chmod +x /usr/local/tomcat/webapps/demo.war

# tell docker what port to expose
EXPOSE 8071