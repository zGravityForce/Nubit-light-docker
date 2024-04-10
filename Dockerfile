FROM golang:latest

# 安装git
RUN apt-get update && apt-get install -y git

WORKDIR /data

# 克隆项目并执行go mod tidy
RUN git clone https://github.com/RiemaLabs/modular-indexer-light.git 

WORKDIR /data/modular-indexer-light

RUN go mod tidy \
    && cp config.example.json config.json


COPY run.sh /data/modular-indexer-light/run.sh
RUN chmod +x /data/modular-indexer-light/run.sh