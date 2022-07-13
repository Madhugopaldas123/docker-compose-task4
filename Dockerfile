FROM maven:3.6.3-openjdk-8 
COPY . /dist 
RUN cd /dist && mvn clean install 
WORKDIR /dist/ 
CMD sleep 150 && mvn sonar:sonar 
-Dsonar.host.url=http://10.11.0.164:9020  
-Dsonar.language=java -Dsonar.login=admin 
-Dsonar.password=admin -Dsonar. projectKey=sonarbackend
