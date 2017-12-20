# Janus Greeting Service

This is an example REST API and test built in Spring Boot.

## Goal

Provide an example of how to deploy a Java REST api to Google Kubernetes Engine.

## Requirements

Most requirements are optional, but links are provided below.

[git](https://git-scm.com/downloads)

[Java 8 JDK](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)

[Gradle 4](https://docs.gradle.org/current/userguide/installation.html)(Optional, you can use the 'gradlew' or 'gradlew.bat' files instead)

[Docker](https://docs.docker.com/installation/)

## Executing The Project

### Build

`gradle build`

### Test

`gradle test`

### Run

`gradle bootRun`

## Build Docker Container

`gradle build` (If you haven't already)

`docker build . --tag greeting-service`

`docker run greeting-service`

# Contact Me

Andrew Bell

homepage: www.recursivechaos.com

email: andrew@recursivechaos.com

twitter: @recursive_chaos
