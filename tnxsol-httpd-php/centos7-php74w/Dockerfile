FROM centos:8
MAINTAINER R Martinez <juney.m+docker@gmail.com>

RUN dnf -y install dnf-utils http://rpms.remirepo.net/enterprise/remi-release-8.rpm

RUN dnf module reset php && \
    dnf -y module enable php:remi-7.4 && \
    dnf -y install php-fpm php-opcache php-cli php-bcmath php-intl php-mbstring php-mysqlnd php-pdo php-soap php-pdo php-pear php-pecl-gearman php-pecl-memcache php-process php-xml php-ldap httpd && \ 
    sed -i 's/\/var\/www\/html/\/app\/public\//g' /etc/httpd/conf/httpd.conf && \
    mkdir -p /app/public/

VOLUME ["/app", "/var/log/httpd"]

EXPOSE 80

WORKDIR /app

CMD ["httpd", "-D", "FOREGROUND"]
