FROM repo.tnx.solutions:6000/juneym/tnxsol-httpd-php:php70w-v3
MAINTAINER R Martinez <juney.m+docker@gmail.com>

RUN yum -y install php70w-pecl-xdebug && \
    yum -y install git && \
    yum -y install openconnect which net-tools iproute && \
    curl -o /usr/local/bin/composer.phar https://getcomposer.org/download/1.3.2/composer.phar && \
    chmod 755 /usr/local/bin/composer.phar && \
    ln -s /usr/local/bin/composer.phar /usr/local/bin/composer


VOLUME ["/web", "/var/log/httpd"]

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
