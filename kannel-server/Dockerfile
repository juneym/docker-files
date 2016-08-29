FROM juneym/centos-systemd:7
MAINTAINER R Martinez <juney.m@gmail.com>

RUN yum -y install epel-release && yum clean all
RUN yum -y install gcc make libxml2-devel mariadb-devel bison byacc openssl-devel
ADD http://kannel.org/download/1.4.4/gateway-1.4.4.tar.gz /root/
RUN cd /root/ && tar -xvzf gateway-1.4.4.tar.gz
WORKDIR /root/gateway-1.4.4
RUN ./configure --prefix=/usr/local/kannel --sysconfdir=/etc/kannel --with-mysql --with-mysql-dir=/usr/include/mysql --disable-wap && \
    make && \
    make install
RUN rm /root/gateway-1.4.4.tar.gz
RUN rm -rf /root/gateway-1.4.4
RUN mkdir -p /var/log/kannel && mkdir -p /var/run/kannel  && mkdir -p /var/spool/kannel 
ADD build-defaults/etc/kannel /etc/kannel
ADD build-defaults/etc/service/kannel /etc/service/kannel
RUN chmod 755 /etc/service/kannel/run.sh


VOLUME ["/var/log/kannel/", "/etc/kannel/", "/var/spool/kannel"]

EXPOSE 13000 13013

CMD ["/etc/service/kannel/run.sh"]
