# Alpine Linux with OpenJDK JRE
FROM openjdk:8-jre-alpine
# copy war file
COPY spring-boot-app-0.0.1-SNAPSHOT.war /app.war
# runs application
CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=default", "/app.war"]
