ARG JAVA_VERSION=11
FROM mcr.microsoft.com/openjdk/jdk:$JAVA_VERSION-ubuntu 

COPY target/demoapp-1.0-SNAPSHOT-jar-with-dependencies.jar /demoapp.jar

CMD ["java", "-jar", "/demoapp.jar"]
