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

## Prerequisites

This guide assumes a basic understanding of building REST services with Spring Boot. For a quick introduction, see [Spring's Building a RESTful Web Service](https://spring.io/guides/gs/rest-service/)

This guide also assumes you have built a Kubernetes cluster similiar to [Janus GKE Infrastructure](https://github.com/AndrewBell/janus-gke)

## Building and Testing Project Locally

Build:

`gradle build`

Test:

`gradle test`

Run:

`gradle bootRun`

View:

Open your browser to `localhost:8080/greetings`

## Build Docker Container

Build artifact:

`gradle build` (If you haven't already)

Build Docker container:

`docker build . --tag greeting-service`

Run Docker container:

`docker run greeting-service`

View:

Open your browser to `localhost:8080/greetings`

## Push Container to Registry

[More info on pushing a Docker container to Google's Container Registry](https://cloud.google.com/container-registry/docs/pushing-and-pulling?hl=en_US)

Tag:

`docker tag greeting-service us.gcr.io/[PROJECT-ID]/greeting-service:1.0`

Push:

`gcloud docker -- push us.gcr.io/[PROJECT-ID]/greeting-service:1.0`

Confirm:

`gcloud container images list-tags us.gcr.io/[PROJECT-ID]/greeting-service`

## Deploy to Kubernetes

Run Application:

`kubectl run greeting-service --image=gcr.io/[PROJECT-ID]/greeting-service:1.0 --port 8080`

Expose through a load balancer:

`kubectl expose deployment greeting-service --type="LoadBalancer"`

Inspect:

`kubectl get service greeting-service`

Find the external IP from the above command (may take a few minutes) and then open your browser to

`http://[EXTERNAL-IP]:8080/greetings`

## Teardown

`kubectl delete service greeting-service`

# Contact Me

Andrew Bell

homepage: www.recursivechaos.com

email: andrew@recursivechaos.com

twitter: @recursive_chaos
