FROM mcr.microsoft.com/openjdk/jdk:11-ubuntu 

ADD mvnw /mvnw
ADD .mvn /.mvn
ADD src /src
ADD pom.xml /pom.xml

RUN /mvnw package

COPY /target/demoapp-1.0-SNAPSHOT-jar-with-dependencies.jar /demoapp.jar

CMD ["java", "-jar", "/demoapp.jar"]
