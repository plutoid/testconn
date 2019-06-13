FROM centos:centos7.6.1810
MAINTAINER mytest

RUN yum -y update; yum clean all
RUN yum -y install epel-release; yum clean all
RUN yum -y install mongodb; yum clean all
RUN yum -y install redis; yum clean all
RUN yum -y install rabbitmq-server; yum clean all
RUN yum install -y http://repo.mysql.com/mysql57-community-release-el5-7.noarch.rpm
RUN yum install -y mysql-community-client; yum clean all
RUN yum install -y https://archive.cloudera.com/cm6/6.0.1/redhat7/yum/RPMS/x86_64/oracle-j2sdk1.8-1.8.0+update141-1.x86_64.rpm
RUN yum -y install wget bind-utils net-tools curl tcpdump; yum clean all
RUN wget https://archive.apache.org/dist/kafka/1.1.1/kafka_2.11-1.1.1.tgz && tar zxf kafka_2.11-1.1.1.tgz -C /opt && rm kafka_2.11-1.1.1.tgz
RUN echo "redis-cli 3.2.12" >> /etc/motd
RUN echo "mysql  Ver 14.14 Distrib 5.7.18" >> /etc/motd
RUN echo "MongoDB shell version: 2.6.12" >> /etc/motd
