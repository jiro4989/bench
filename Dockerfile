FROM ubuntu:19.10

ARG GO_VERSION="1.14.1"

RUN apt-get update -yqq && \
    apt-get install -yqq --no-install-recommends \
            build-essential \
            ca-certificates \
            git \
            wget \
            python3 \
            && \
    rm -rf /var/lib/apt/lists/*

# Nim
ENV PATH /root/.nimble/bin:$PATH
RUN curl https://nim-lang.org/choosenim/init.sh -sSf > init.sh
RUN sh init.sh -y \
    && choosenim update stable

# Go
ENV PATH /usr/local/go/bin:$PATH
RUN wget https://dl.google.com/go/go${GO_VERSION}.linux-amd64.tar.gz && \
    sudo tar -C /usr/local -xzf go${GO_VERSION}.linux-amd64.tar.gz

