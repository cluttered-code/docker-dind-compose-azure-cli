FROM clutteredcode/dind-compose

LABEL maintainer "David Clutter <cluttered.code@gmail.com>"

RUN apk update &&\
    apk upgrade --no-cache &&\
    apk add --no-cache --virtual .build-deps bash make python-dev py-pip gcc libffi-dev musl-dev openssl-dev &&\
    pip install --no-cache-dir azure-cli &&\
    az configure &&\
    apk del .build-deps
