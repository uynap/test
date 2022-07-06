FROM golang:1.18

RUN useradd -d /home/runner runner
RUN usermod -u 1001 runner

USER runner

WORKDIR /home/runner

COPY --chown=runner script ./

USER root

RUN mkdir /home/runner/download
RUN chown runner:runner /home/runner
RUN chown runner:runner /home/runner/download
RUN stat /home/runner/download
RUN stat /home/runner
RUN stat /home/runner/script

USER runner
ENTRYPOINT ["/home/runner/script"]
