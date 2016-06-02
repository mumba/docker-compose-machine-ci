FROM mumba/docker-compose-machine

MAINTAINER Greg Keys <gregkeys@gmail.com>

ENV PATH=/usr/bin/node:$PATH

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - \
    && apt-get update -q \
    && apt-get -y -q install --no-install-recommends \
            nodejs \
            git \
            python-pip \
    && pip install awscli \
    && npm install -g \
        bower \
        node-sass \
        typings \
        typescript@next \
        @mumbacloud/dmport