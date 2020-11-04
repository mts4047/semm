FROM openjdk:latest
COPY ./target/classes/com /tmp/com
WORKDIR /tmp
ENTRYPOINT ["java", "com.napier.semm.App"]

FROM openjdk:latest
COPY ./target/semm-0.1.0.1-jar-with-dependencies.jar /tmp
WORKDIR /tmp
ENTRYPOINT ["java", "-jar", "semm-0.1.0.1-jar-with-dependencies.jar"]