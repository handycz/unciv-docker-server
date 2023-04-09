FROM openjdk:21
ARG SERVER_VERSION

WORKDIR /server
RUN echo "Version: ${SERVER_VERSION}"
RUN curl -L https://github.com/yairm210/Unciv/releases/download/${SERVER_VERSION}/UncivServer.jar > UncivServer.jar
WORKDIR /server/config
RUN ls -la /server
CMD java -jar /server/UncivServer.jar
