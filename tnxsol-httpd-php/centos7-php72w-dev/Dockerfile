FROM repo.tnx.solutions:6000/juneym/tnxsol-httpd-php:php72w-dev-V2
MAINTAINER R Martinez <juney.m+docker@gmail.com>

RUN yum -y install php72w-pecl-xdebug && \
    yum -y install git && \
    yum -y install openconnect which net-tools iproute && \
    curl -o /usr/local/bin/composer.phar https://getcomposer.org/download/1.7.3/composer.phar && \
    chmod 755 /usr/local/bin/composer.phar && \
    ln -sf /usr/local/bin/composer.phar /usr/local/bin/composer

COPY tideways-xhprof-5.0.2-x86_64.tar.gz /tmp/
RUN rm /etc/php.d/xdebug.ini /etc/php-zts.d/xdebug.ini && \
    cd /tmp/ && tar -xvzf tideways-xhprof-5.0.2-x86_64.tar.gz && \
    mv tideways_xhprof-5.0.2/tideways_xhprof-7.2.so  /usr/lib64/php/modules/ && \
    mv tideways_xhprof-5.0.2/tideways_xhprof-7.2-zts.so  /usr/lib64/php-zts/modules && \
    echo "extension = tideways_xhprof-7.2.so" > /etc/php.d/tideways_xhprof.ini && \
    echo "extension = tideways_xhprof-7.2-zts.so" > /etc/php-zts.d/tideways_xhprof.ini


VOLUME ["/app", "/var/log/httpd"]

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
