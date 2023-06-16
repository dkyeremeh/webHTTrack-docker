FROM ubuntu
VOLUME [ "/root/websites" ]
EXPOSE 8080

RUN apt-get update
RUN apt-get install -y webhttrack

COPY scripts/entry.sh /usr/bin/firefox

ENTRYPOINT [ "webhttrack" ]