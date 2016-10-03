FROM centos:7
MAINTAINER R Martinez <juney.m+docker@gmail.com>

RUN yum -y install epel-release && yum clean all && yum -y install gcc make libxml2-devel mariadb-devel bison byacc openssl-devel supervisor
ADD http://kannel.org/download/1.4.4/gateway-1.4.4.tar.gz /root/
RUN cd /root/ && tar -xvzf gateway-1.4.4.tar.gz && \
    cd /root/gateway-1.4.4 && \
    ./configure --prefix=/usr/local/kannel --sysconfdir=/etc/kannel --with-mysql --with-mysql-dir=/usr/include/mysql --disable-wap && \
    make && \
    make install && \
    make install-test && \
    make install-checks && \
    make install-contrib && \
    rm /root/gateway-1.4.4.tar.gz && \
    rm -rf /root/gateway-1.4.4 && \
    mkdir -p /var/log/kannel && \
    mkdir -p /var/run/kannel && \
    mkdir -p /var/spool/kannel && \
    yum -y remove  gcc make libxml2-devel mariadb-devel  bison byacc openssl-devel && \
    yum clean all

ADD build-defaults/etc/kannel /etc/kannel
ADD build-defaults/etc/supervisor/supervisord.conf  /etc
ADD build-defaults/etc/supervisor/supervisord.d  /etc/supervisord.d

VOLUME ["/var/log/kannel/", "/etc/kannel/", "/var/spool/kannel", "/var/log/supervisor/"]

EXPOSE 13000 13013

CMD ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisord.conf"]
