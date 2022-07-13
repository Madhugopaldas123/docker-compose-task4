FROM maven:3.6.3-openjdk-8 
COPY . /var 
RUN cd /var && mvn clean install 
WORKDIR /var/ 
CMD sleep 150 && mvn sonar:sonar
