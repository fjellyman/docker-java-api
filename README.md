# docker-java-api

This project is based off of the [_Building a RESTful Web Service_](https://spring.io/guides/gs/rest-service/) by Spring.

The goal of this project is to be a simple REST API powered by Java and Spring. It's to be dockerized and ready to use in docker examples and workflows.

This is NOT to be used as best practice for Spring applications, and is only used for example/learning purposes.

## Installation 

The dependencies are configured to be used with Gradle. 

`gradle build`

## Startup

To run the application, simply use the Java CLI.

`./gradlew build && java -jar build/libs/docker-java-api-0.1.0.jar`

## Docker

To run the application using [Docker](https://www.docker.com/), build the image, and then run it.

`docker build . -t fjellyman/docker-java-api:latest`

`docker run --rm -p 8080:8080 fjellyman/docker-java-api:latest`

_Note: change the tag name to what works for you_

## Greeting

The application will return a JSON package with a greeting. This can be accessed via [localhost:8080/greeting](http://localhost:8080/greeting).