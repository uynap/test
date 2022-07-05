FROM golang:1.18

RUN useradd -d /home/runner runner

USER runner

WORKDIR /home/runner

COPY --chown=runner go.mod ./
COPY --chown=runner main.go ./
COPY --chown=runner script ./

#USER root
RUN mkdir /home/runner/download
RUN chown runner /home/runner
RUN chown runner /home/runner/download

USER runner
RUN go build -o /home/runner/main

ENTRYPOINT ["/home/runner/main"]
