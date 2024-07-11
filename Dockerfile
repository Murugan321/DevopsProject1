FROM openjdk:8
EXPOSE 8080
WORKDIR /app
ADD target/devops-integration.jar /app/devops-integration.jar
RUN roupadd appuser && useradd -r -g appuser appuser
USER  appuser
ENTRYPOINT ["java","-jar","/devops-integration.jar"]
