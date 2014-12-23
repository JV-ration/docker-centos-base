FROM debian:jessie
MAINTAINER Viktor Sadovnikov <viktor@jv-ration.com>

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

# Install very basic packages
RUN yum -y install \
    sudo \
    tar \
    unzip \
    wget \

# Install JRE 7
RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u65-b17/jre-7u65-linux-x64.rpm
RUN echo "cca8862e49cf2e6c6e28e1987c59a2f7  jre-7u65-linux-x64.rpm" >> MD5SUM
RUN md5sum -c MD5SUM
RUN rpm -Uvh jre-7u65-linux-x64.rpm
RUN rm -f jre-7u65-linux-x64.rpm MD5SUM
