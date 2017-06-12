FROM maven:3.5-jdk-8

VOLUME /tmp

ADD . /usr/src/app
WORKDIR /usr/src/app
RUN mvn package

CMD java -jar /usr/src/app/target/gs-spring-boot-docker-0.1.0.jar
