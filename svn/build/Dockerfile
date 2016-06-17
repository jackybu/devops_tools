# Version: 0.0.1
FROM docker.iata.org/centos:6
MAINTAINER bulc "bulc@iata.org"

RUN	yum -y update

COPY ./svn/wandisco-svn.repo /etc/yum.repos.d/wandisco-svn.repo
RUN yum -y install httpd httpd-devel mod_dav_svn subversion
RUN	yum clean packages
RUN	yum clean headers
RUN	yum clean all

COPY ./httpd/subversion.conf /etc/httpd/conf.d/
COPY ./httpd/httpd.conf /etc/httpd/conf/
COPY ./svn/authz /etc/httpd/conf.d/
COPY ./svn/passwd /etc/httpd/conf.d/
COPY run.sh /root/run.sh
RUN chmod 755 /root/run.sh
RUN mkdir -p /opt/svn

WORKDIR /root

EXPOSE 80

CMD ["/root/run.sh"]