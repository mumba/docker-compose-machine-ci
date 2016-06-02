FROM mumba/docker-compose-machine

MAINTAINER Greg Keys <gregkeys@gmail.com>

RUN apt-get update -q \
    && apt-get -y -q install --no-install-recommends \
            python-pip \
    && pip install awscli \
    && npm install -g \
        bower \
        node-sass \
        typings \
        typescript@next \
        @mumbacloud/dmport