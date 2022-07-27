# Use an official OpenJDK runtime as a parent image
FROM openjdk:8-jre-alpine

# set shell to bash
# source: https://stackoverflow.com/a/40944512/3128926
RUN apk update && apk add bash

# Set the working directory to /app
WORKDIR /app

# Copy the fat jar into the container at /app
COPY Hello.war /app

# Make port 8080 available to the world outside this container

# Run jar file when the container launches
CMD ["java", "-jar", "Hello.war"]

CMD sleep 150 && mvn sonar:sonar \
  -Dsonar.projectKey=task4 \
  -Dsonar.host.url=http://10.11.0.164:9017 \
  -Dsonar.login=1fb3e5c2e0b3ff8f4e72fefda68c0bf7f835b1f5
