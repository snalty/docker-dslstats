# Pull base image
FROM jlesage/baseimage-gui:debian-10

RUN apt-get update && apt-get install curl -y && apt-get install gtk+2.0 -y

RUN cd / && \
    mkdir .dslstats && \
    curl http://dslstats.me.uk/files/dslstats64L-6.5.tar.gz -O && \
    tar xzf dslstats64L-6.5.tar.gz && \
    rm dslstats64L-6.5.tar.gz

COPY startapp.sh /startapp.sh

ENV APP_NAME="Dslstats"