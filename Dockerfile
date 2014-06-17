#
# Presto DB
#

FROM docker/java-oracle8

MAINTAINER David Medinets "david.medinets@gmail.com"

RUN apt-get install -y python

ADD configure.sh /
ADD presto-server-0.69.tar.gz /

RUN mkdir -p /var/lib/presto/data
RUN mkdir -p /presto-server-0.69/etc

EXPOSE 8080

WORKDIR /presto-server-0.69
#ENTRYPOINT ["/run.sh"]
