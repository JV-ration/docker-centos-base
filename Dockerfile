FROM centos:centos7

RUN yum -y install tar wget
RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u65-b17/jre-7u65-linux-x64.rpm
RUN echo "cca8862e49cf2e6c6e28e1987c59a2f7  jre-7u65-linux-x64.rpm" >> MD5SUM
RUN md5sum -c MD5SUM
RUN rpm -Uvh jre-7u65-linux-x64.rpm
RUN rm -f jre-7u65-linux-x64.rpm MD5SUM
