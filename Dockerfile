FROM openjdk:17-jdr-slim
WORKDIR /app1
ADD target/devops-integration.jar /app/devops-integration.jar
RUN groupadd appuser && useradd -r -g appuser appuser
USER  appuser
ENTRYPOINT ["java","-jar","/app/devops-integration.jar"]
