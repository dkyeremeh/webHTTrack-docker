FROM ubuntu

RUN apt-get update
RUN apt-get install -y webhttrack

# RUN sed -i "s/^\${browser}.*/\/app\/entry.sh/g" /usr/bin/webhttrack
# RUN sed -i "s/\${HOME}\/websites/\/websites/g" /usr/bin/webhttrack

RUN mkdir -p /websites
COPY scripts/entry.sh /usr/bin/firefox

ENTRYPOINT [ "webhttrack" ]