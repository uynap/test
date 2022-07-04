FROM golang:1.18

WORKDIR /usr/src/app

COPY go.mod ./
COPY main.go ./
RUN mkdir download
RUN go build -o /go/bin/main

ENTRYPOINT ["/go/bin/main"]
