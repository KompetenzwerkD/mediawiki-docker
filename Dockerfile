FROM mediawiki

# install missung stuff and php extensions
RUN apt-get update && apt-get install -y \
      wget \
      tar \
      grep \
      libzip-dev \
    && docker-php-ext-install zip

# copy extension install scripts
COPY config ./config
COPY install.sh ./install.sh
COPY extensions/*.sh ./extensions/

# run extension install scripts
RUN ./install.sh
