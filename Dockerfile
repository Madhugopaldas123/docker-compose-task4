FROM maven:3.6.3-openjdk-8 
COPY . /dist 
RUN cd /dist && mvn clean install 
WORKDIR /dist/ 
CMD sleep 150 && mvn sonar:sonar
