FROM google/cloud-sdk:latest
LABEL maintainer="henrik.hedlund@remarkable.com"

RUN cd /tmp && \
    curl -O https://dl.google.com/go/go1.9.7.linux-amd64.tar.gz && \
    tar xvf go1.9.7.linux-amd64.tar.gz && \
    mv go /usr/local && \
    rm go1.9.7.linux-amd64.tar.gz && \
    mkdir -p /go

ENV GOPATH /go
ENV PATH $PATH:/usr/local/go/bin:$GOPATH/bin
