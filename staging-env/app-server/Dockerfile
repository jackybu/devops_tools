FROM docker.iata.org/centos:6
MAINTAINER bulc "bulc@iata.org"

ENV TOMCAT_VERSION apache-tomcat-9.0.0.M8
ENV JAVA_HOME /opt/java

ARG JAVA_VERSION_MAJOR 8
ARG JAVA_VERSION_MINOR 91
ARG JAVA_VERSION_BUILD 14

RUN yum install -y curl tar && \
    yum clean all

RUN mkdir -p /opt
RUN curl --silent --location --retry 3 --header "Cookie: oraclelicense=accept-securebackup-cookie; " \
    http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-b${JAVA_VERSION_BUILD}/server-jre-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz \
    | tar -zx -C /opt && \
    ln -s /opt/jdk1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR} ${JAVA_HOME}
RUN curl --silent --location --retry 3 \
    http://mirrors.cnnic.cn/apache/tomcat/tomcat-9/v9.0.0.M8/bin/${TOMCAT_VERSION}.tar.gz \
    | tar -zx -C /opt
RUN chown root:root -R /opt

COPY ./run.sh /root/
RUN chmod 755 /root/run.sh

CMD ["/root/run.sh"]
