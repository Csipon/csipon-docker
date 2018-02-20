FROM maven:3.5-jdk-8-alpine
VOLUME /tmp
WORKDIR /app
ADD . /app
COPY pom.xml /tmp/pom.xml
RUN mvn -B -f /tmp/pom.xml -s /usr/share/maven/ref/settings-docker.xml dependency:resolve
RUN apk add -p
EXPOSE 80
#CMD ["ls"]
CMD ["mvn", "install", "spring-boot:run"]
#ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar", "/csipon.jar"]