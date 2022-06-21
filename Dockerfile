FROM mediawiki:1.38

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install zip libpng-dev wget vim git -y && \
    docker-php-ext-install gd && \
    wget -cO - https://getcomposer.org/composer-1.phar > composer.phar

COPY ./install_extensions.sh ./install_extensions.sh

RUN php composer.phar require "mediawiki/semantic-media-wiki" "~4.0" --update-no-dev && \
    #php composer.phar require mediawiki/semantic-result-formats "~3.2" --update-no-dev && \
    php composer.phar require mediawiki/chameleon-skin "~4.1" --update-no-dev && \
    php composer.phar require mediawiki/semantic-compound-queries "~2.2" --update-no-dev && \
    php composer.phar require mediawiki/page-forms "~5.4" --update-no-dev && \
    php composer.phar require mediawiki/maps "~9.0" --update-no-dev && \
    php composer.phar require professional-wiki/modern-timeline "~1.2" --update-no-dev && \
    ./install_extensions.sh
