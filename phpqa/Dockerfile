FROM composer/composer
MAINTAINER Raul M <juney.m@gmail.com>

RUN composer global require 'edgedesign/phpqa' --update-no-dev "symfony/console:~2.8"

ENTRYPOINT ["phpqa"]
CMD ["--help"]

