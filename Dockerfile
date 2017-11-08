FROM tomcat:8.0.20-jre8
RUN mkdir /usr/local/tomcat/webapps/myapp
COPY SpringHibernateExample/target/my-app-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/myapp.war /usr/local/tomcat/webapps/myapp/