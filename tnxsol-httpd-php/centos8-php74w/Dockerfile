FROM centos:8
MAINTAINER R Martinez <juney.m+docker@gmail.com>

# from: https://github.com/davescripts/docker-centos-8-apache-php-using-systemd/blob/main/Dockerfile
ENV container docker
RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == \
systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;
VOLUME [ "/sys/fs/cgroup" ]

RUN dnf -y install httpd httpd-tools && \
    dnf -y install dnf-utils http://rpms.remirepo.net/enterprise/remi-release-8.rpm && \
    dnf module reset php && \
    dnf -y module enable php:remi-7.4 && \
    dnf -y install php-fpm php-opcache php-cli php-bcmath php-intl php-mbstring php-mysqlnd php-pdo php-soap php-pdo php-pear php-pecl-gearman php-pecl-memcache php-process php-xml php-ldap && \
    sed -i 's/\/var\/www\/html/\/app\/public\//g' /etc/httpd/conf/httpd.conf && \
    mkdir -p /app/public/  && \
    dnf clean all && \
    sed -E -i -e '/<Directory "\/var\/www\/html">/,/<\/Directory>/s/AllowOverride None/AllowOverride All/' /etc/httpd/conf/httpd.conf && \
    sed -E -i -e 's/DirectoryIndex (.*)$/DirectoryIndex index.php \1/g' /etc/httpd/conf/httpd.conf && \
    sed -E -i -e 's/;listen.owner = nobody/listen.owner = apache/g' /etc/php-fpm.d/www.conf && \
    sed -E -i -e 's/;listen.group = nobody/listen.group = apache/g' /etc/php-fpm.d/www.conf && \
    sed -E -i -e 's/listen.acl_users = (.*)$/;listen.acl_users = \1/g' /etc/php-fpm.d/www.conf && \ 
    systemctl enable httpd.service && \
    systemctl enable php-fpm

VOLUME ["/app", "/var/log/httpd"]
EXPOSE 80
WORKDIR /app

CMD ["/usr/sbin/init"]
