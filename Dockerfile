FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y unzip curl libcurl4 libssl1.0.0 wget

WORKDIR /bedrock-server
RUN wget https://minecraft.azureedge.net/bin-win/bedrock-server-1.12.0.28.zip
RUN unzip -q bedrock-server-1.12.0.28.zip

ENV LD_LIBRARY_PATH=.
CMD ./bedrock_server