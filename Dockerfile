FROM maven:3-openjdk-15

ARG SDK=aws-iot-device-sdk-java
ARG REPO=https://github.com/aws/$SDK.git

WORKDIR /workspaces/java
RUN git clone $REPO

WORKDIR $SDK
RUN mvn clean install -Dgpg.skip=true

COPY . /workspaces/java/$SDK