FROM debian:jessie
MAINTAINER Viktor Sadovnikov <viktor@jv-ration.com>

RUN apt-get update
RUN apt-get -qqy install \
        openjdk-7-jdk \
    && apt-get clean
