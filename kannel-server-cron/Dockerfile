FROM repo.tnx.solutions:6000/juneym/kannel-server:v2
MAINTAINER R Martinez <juney.m+docker@gmail.com>


ADD build-defaults/etc/kannel /etc/kannel
ADD build-defaults/etc/supervisor/supervisord.conf  /etc
ADD build-defaults/etc/supervisor/supervisord.d  /etc/supervisord.d
ADD build-defaults/etc/cron.d/kannel.cron /etc/cron.d/kannel.cron

RUN yum install -y cronie logrotate

VOLUME ["/var/log/kannel/", "/etc/kannel/", "/var/spool/kannel", "/var/log/supervisor/"]
EXPOSE 13000 13013

CMD ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisord.conf"]
