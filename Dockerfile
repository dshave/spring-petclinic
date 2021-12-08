FROM openjdk:11

RUN apt update -y && apt install wait-for-it -y

EXPOSE 8080
COPY target/*.jar /opt/app.jar
ENTRYPOINT [ "java","-jar","/opt/app.jar" ]