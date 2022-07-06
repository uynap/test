FROM golang:1.18

RUN useradd -d /home/runner runner

USER runner

WORKDIR /home/runner

RUN mkdir /home/runner/download

ENTRYPOINT ["/bin/bash"]
