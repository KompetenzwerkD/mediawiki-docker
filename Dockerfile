FROM mediawiki

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install zip libpng-dev wget vim git -y && \
    docker-php-ext-install gd && \
    wget -cO - https://getcomposer.org/composer-1.phar > composer.phar


RUN php composer.phar require mediawiki/semantic-media-wiki "~3.2" --update-no-dev && \
    php composer.phar require mediawiki/semantic-result-formats "~3.1" --update-no-dev && \
    php composer.phar require mediawiki/page-forms "^4.9.5" --update-no-dev


