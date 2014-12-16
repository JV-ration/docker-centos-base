FROM centos:centos7

# Install very basic packages
RUN yum -y install tar wget unzip sudo

# Install JRE 7
RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u65-b17/jre-7u65-linux-x64.rpm
RUN echo "cca8862e49cf2e6c6e28e1987c59a2f7  jre-7u65-linux-x64.rpm" >> MD5SUM
RUN md5sum -c MD5SUM
RUN rpm -Uvh jre-7u65-linux-x64.rpm
RUN rm -f jre-7u65-linux-x64.rpm MD5SUM

# Install xmlstarlet for inline XML editing
RUN wget http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN rpm -ivh epel-release-6-8.noarch.rpm
RUN rm -f epel-release-6-8.noarch.rpm
RUN yum -y install xmlstarlet-1.3.1
