FROM clutteredcode/dind-compose

LABEL maintainer "David Clutter <cluttered.code@gmail.com>"

RUN apk update &&\
    apk upgrade --no-cache &&\
    apk add --no-cache bash &&\
    apk add --no-cache --virtual .build-deps make python-dev py-pip gcc libffi-dev musl-dev openssl-dev &&\
    pip install --no-cache-dir -U setuptools distribute &&\
    pip install --no-cache-dir azure-cli &&\
    apk del .build-deps
