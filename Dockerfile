FROM maven:3-openjdk-11

RUN git clone https://github.com/aws/aws-iot-device-sdk-java.git

WORKDIR aws-iot-device-sdk-java
RUN mvn clean install -Dgpg.skip=true