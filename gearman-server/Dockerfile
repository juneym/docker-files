FROM centos:centos7
MAINTAINER R Martinez <juney.m@gmail.com>

RUN yum -y update && yum clean all && yum -y install epel-release && yum clean all
RUN yum -y install gearmand &&  mkdir -p /var/log/gearmand
VOLUME ["/var/log/gearmand"]

EXPOSE 4730

CMD ["gearmand", "-t", "22", "-j", "10", "--verbose=WARNING",  "--round-robin"]
