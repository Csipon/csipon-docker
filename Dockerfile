FROM openjdk:8-jdk-alpine

VOLUME /tmp
ARG JAR_FILE
ADD ${JAR_FILE} csipon.jar
CMD ["java", "-Djava.security.egd=file:/dev/./urandom","-jar","csipon.jar"]