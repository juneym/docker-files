FROM centos:7
MAINTAINER R Martinez <juney.m+docker@gmail.com>

RUN yum -y install epel-release && yum clean all &&  \
    rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm && \
    yum -y install yum-plugin-replace

#RUN yum -y replace php-common --replace-with=php56w-common && \

RUN yum -y install php56w php56w-opcache php56w-cli && \
    yum -y install php56w-fpm php56w-opcache && \
    yum -y install php56-bcmath php56w-intl php56w-mbstring  php56w-mysqlnd php56w-pdo \
           php56w-pear php56w-pecl-gearman php56w-pecl-memcache php56w-pgsql php56w-process \ 
           php56w-soap php56w-xml && \
    yum -y install httpd

RUN sed -i 's/\/var\/www\/html/\/var\/www\/src\/web\//g' /etc/httpd/conf/httpd.conf    

VOLUME ["/var/www", "/var/log/httpd"]

EXPOSE 80

