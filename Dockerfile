FROM ubuntu:latest as builder
WORKDIR /docker-work
RUN apt update && apt install -y maven default-jdk git
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
WORKDIR /docker-work/boxfuse-sample-java-war-hello
RUN mvn clean package
                                                                                      
FROM tomcat:9.0.21-jdk11-openjdk-slim
COPY --from=builder /docker-work/boxfuse-sample-java-war-hello/target/hello-1.0.war /usr/local/tomcat/webapps/                                                              
EXPOSE 8080
