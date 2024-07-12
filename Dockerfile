FROM openjdk:8
WORKDIR /app
ADD target/devops-integration.jar /app/devops-integration.jar
RUN groupadd appuser && useradd -r -g appuser appuser
USER  appuser
ENTRYPOINT ["java","-jar","/app/devops-integration.jar"]
