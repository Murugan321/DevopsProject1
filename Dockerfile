FROM openjdk:8
WORKDIR /app1
ADD target/devops-integration.jar /app1/devops-integration.jar
RUN groupadd appuser && useradd -r -g appuser appuser
USER  appuser
ENTRYPOINT ["java","-jar","/app1/devops-integration.jar"]
