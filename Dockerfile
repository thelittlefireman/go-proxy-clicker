FROM golang:1.7-alpine

WORKDIR /

RUN apk update && \
    apk add git

RUN git clone https://github.com/thelittlefireman/go-proxy-clicker.git

WORKDIR /go-proxy-clicker

RUN go get github.com/gorilla/websocket

RUN go build

EXPOSE 5000

ENTRYPOINT /go-proxy-clicker/go-proxy-clicker