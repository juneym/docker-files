FROM repo.tnx.solutions:6000/juneym/tnxsol-httpd-php:php70w
MAINTAINER R Martinez <juney.m+docker@gmail.com>

RUN yum -y install php70w-pecl-xdebug && \
    yum -y install git && \
    yum -y install openconnect which net-tools iproute


VOLUME ["/webapp", "/var/log/httpd"]

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
