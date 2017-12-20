FROM openjdk:alpine

COPY build/libs/greeting-service-0.0.1-SNAPSHOT.jar /usr/src/app/

WORKDIR /usr/src/app/

CMD ["java", "-jar", "greeting-service-0.0.1-SNAPSHOT.jar"]
