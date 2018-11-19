FROM centos:7.4.1708
MAINTAINER R Martinez <juney.m+docker@gmail.com>

RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm && \
    yum -y install yum-plugin-replace && \
    yum -y install php72w php72w-opcache php72w-cli && \
    yum -y install php72w-fpm php72w-opcache && \
    yum -y install php72-bcmath php72w-intl php72w-mbstring  php72w-mysqlnd php72w-pdo \
           php72w-pear php72w-pecl-gearman php72w-pecl-memcache php72w-pgsql php72w-process \ 
           php72w-soap php72w-xml && \
    yum -y install httpd && \
    sed -i 's/\/var\/www\/html/\/app\/public\//g' /etc/httpd/conf/httpd.conf && \
    mkdir -p /app/public/

VOLUME ["/app", "/var/log/httpd"]

EXPOSE 80

WORKDIR /app

CMD ["httpd", "-D", "FOREGROUND"]
