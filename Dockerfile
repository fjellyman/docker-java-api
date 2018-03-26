FROM openjdk:8-jdk-alpine
COPY . /usr/src/api
WORKDIR /usr/src/api
RUN [ "./gradlew", "build" ]
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "build/libs/docker-java-api-0.1.0.jar" ]