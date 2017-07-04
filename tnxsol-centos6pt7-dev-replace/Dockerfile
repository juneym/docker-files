FROM centos:6.7
MAINTAINER R Martinez <juney.m+docker@gmail.com>

RUN yum remove -y epel-release && yum clean all && rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
RUN rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm

RUN yum -y install yum-plugin-replace
RUN yum -y install php56w php56w-opcache php56w-cli
RUN yum -y install php56w-fpm php56w-opcache
RUN yum -y install php56-bcmath php56w-intl php56w-mbstring  php56w-mysqlnd php56w-pdo \
           php56w-pear php56w-pecl-gearman php56w-pecl-memcache php56w-pgsql php56w-process \ 
           php56w-soap php56w-xml

RUN yum -y install httpd
RUN sed -i 's/\/var\/www\/html/\/var\/www\/src\/web\//g' /etc/httpd/conf/httpd.conf
RUN mkdir -p /var/www/src/web/


RUN yum remove -y webtatic-release epel-release
RUN rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm
RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm


RUN yum install -y git git-svn
RUN yum install -y strace
RUN yum install -y yum-plugin-replace
RUN yum install -y php56w php56w-cli php56w-devel php56w-fpm php56w-intl \
                   php56w-pear php56w-pecl-gearman \
                   php56w-pecl-xdebug php56w-process php56w-soap php56w-xml php56w-tidy php56w-opcache \
                   php56w-mbstring php56w-gd php56w-mbstring php56w-ldap php56w-fpm

RUN yum install -y httpd

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

ADD etc/sysconfig/selinux /etc/sysconfig/selinux


VOLUME ["/var/www", "/var/log/httpd"]
EXPOSE 80 3306
CMD ["httpd", "-D", "FOREGROUND"]