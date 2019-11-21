FROM clutteredcode/dind-compose

LABEL maintainer "David Clutter <cluttered.code@gmail.com>"

RUN apk update &&\
    apk upgrade --no-cache &&\
    apk add --no-cache bash &&\
    apk add --no-cache --virtual .build-deps python-dev py-pip libffi-dev openssl-dev gcc musl-dev openssl-dev &&\
    pip install --no-cache-dir azure-cli &&\
    apk del .build-deps
