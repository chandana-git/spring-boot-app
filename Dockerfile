//FROM openjdk:8-jre-alpine
# copy WAR into image
//COPY target/spring-boot-app-0.0.1-SNAPSHOT.war /app.war 
# run application with this command line 
//EXPOSE 8081
//CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=default", "/app.war"]
FROM tomcat:jdk8
ADD target/spring-boot-app-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/
EXPOSE 8081
CMD ["catalina.sh", "run"]
