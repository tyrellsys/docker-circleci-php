FROM circleci/php:7.1.14-node-browsers

RUN sudo apt-get install -y libicu-dev
RUN sudo docker-php-ext-install intl pdo pdo_mysql

ENV DOCKERIZE_VERSION v0.6.0
RUN sudo sh -c "curl -LO https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz"
