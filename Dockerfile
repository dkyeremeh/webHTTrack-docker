FROM ubuntu

RUN apt-get update
RUN apt-get install -y webhttrack

RUN sed -i "s/^\${browser}.*/echo Listening on Port 8080\nsleep infinity/g" /usr/bin/webhttrack

RUN cat /usr/bin/webhttrack

ENTRYPOINT [ "webhttrack" ]