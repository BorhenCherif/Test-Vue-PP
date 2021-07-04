FROM openjdk:8-jre-alpine3.9

ADD /target/Test-Vue-P-0.0.1-SNAPSHOT.jar app.jar


CMD ["java", "-jar", "app.jar"]
