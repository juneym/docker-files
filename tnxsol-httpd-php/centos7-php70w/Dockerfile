FROM centos:7.4.1708
MAINTAINER R Martinez <juney.m+docker@gmail.com>

RUN yum -y install epel-release && yum clean all &&  \
    rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm && \
    yum -y install yum-plugin-replace && \
    yum -y install php70w php70w-opcache php70w-cli && \
    yum -y install php70w-fpm php70w-opcache && \
    yum -y install php70-bcmath php70w-intl php70w-mbstring  php70w-mysqlnd php70w-pdo \
           php70w-pear php70w-pecl-gearman php70w-pecl-memcache php70w-pgsql php70w-process \ 
           php70w-soap php70w-xml && \
    yum -y install httpd && \
    sed -i 's/\/var\/www\/html/\/app\/public\//g' /etc/httpd/conf/httpd.conf && \
    mkdir -p /app/public/

VOLUME ["/app", "/var/log/httpd"]

EXPOSE 80

WORKDIR /app

CMD ["httpd", "-D", "FOREGROUND"]
