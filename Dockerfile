FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y unzip curl libcurl4 libssl1.0.0
ADD https://minecraft.azureedge.net/bin-linux/bedrock-server-1.12.0.28.zip /bedrock_server.zip
RUN unzip /bedrock_server.zip -d /bedrock-server && rm /bedrock_server.zip

WORKDIR /bedrock-server

ENV LD_LIBRARY_PATH=.
CMD ./bedrock_server
