FROM centos:7

ENV JAVA_HOME=/usr/java/jdk1.8.0_121

RUN yum clean all; \
    rpm --rebuilddb; \
    yum install -y which wget tar sudo

RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u121-b13/e9e7ea248e2c4826b92b3f075a80e441/jdk-8u121-linux-x64.rpm
RUN wget http://downloads.lightbend.com/scala/2.11.8/scala-2.11.8.rpm
RUN yum install -y jdk-8u121-linux-x64.rpm scala-2.11.8.rpm


