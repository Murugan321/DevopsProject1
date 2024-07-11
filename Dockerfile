FROM openjdk:8-alpine
EXPOSE 8080
WORKDIR /app
ADD target/devops-integration.jar /app/devops-integration.jar
RUN groupadd appuser && useradd -r -g appuser appuser
USER  appuser
ENTRYPOINT ["java","-jar","/devops-integration.jar"]
