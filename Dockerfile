FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
ADD ${JAR_FILE} app.jar
COPY ../app.jar /target
CMD ["java", "-Djava.security.egd=file:/dev/./urandom","-jar","app.jar"]