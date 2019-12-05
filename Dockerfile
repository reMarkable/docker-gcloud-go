FROM google/cloud-sdk:latest
LABEL maintainer="henrik.hedlund@remarkable.com"

ARG GO_VERSION="1.13.4"

RUN cd /tmp && \
    curl -O https://dl.google.com/go/go${GO_VERSION}.linux-amd64.tar.gz && \
    tar xvf go${GO_VERSION}.linux-amd64.tar.gz && \
    mv go /usr/local && \
    rm go${GO_VERSION}.linux-amd64.tar.gz && \
    mkdir -p /go

ENV GOPATH /go
ENV PATH $PATH:/usr/local/go/bin:$GOPATH/bin
