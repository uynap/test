FROM golang:1.18

RUN useradd -d /home/cosmos cosmos

USER cosmos

WORKDIR /home/cosmos

COPY --chown=cosmos go.mod ./
COPY --chown=cosmos main.go ./
COPY --chown=cosmos script ./

USER root
RUN mkdir /home/cosmos/download
RUN chown cosmos /home/cosmos
RUN chown cosmos /home/cosmos/download

USER cosmos
RUN go build -o /home/cosmos/main

ENTRYPOINT ["/home/cosmos/main"]
