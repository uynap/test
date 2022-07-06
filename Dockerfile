FROM golang:1.18

RUN useradd -d /home/runner runner

USER runner

WORKDIR /home/runner

RUN stat `which mkdir`
RUN stat /home
RUN stat /home/runner

RUN mkdir /home/runner/download

ENTRYPOINT ["/bin/bash"]
