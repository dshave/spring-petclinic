FROM openjdk:11

EXPOSE 8080
COPY target/*.jar /opt/app.jar
ENTRYPOINT [ "java","-jar","/opt/app.jar" ]