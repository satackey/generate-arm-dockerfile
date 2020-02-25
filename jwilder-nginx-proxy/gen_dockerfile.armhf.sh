#!/bin/bash

FOREGO_TAG="v0.16.1"

FOREGO_DOCKERFLE="
FROM golang:1 AS forego-build
WORKDIR /src
RUN set -ex \
    && go get github.com/tools/godep \
    && git clone --branch='${FOREGO_TAG}' https://github.com/jwilder/forego \
    && cd forego \
    && make forego

"

echo $FOREGO_DOCKERFLE$(cat Dockerfile) > Dockerfile.armhf

sed -ie 's/ADD https:\/\/github.com\/jwilder\/forego\/releases\/download\/v0\.16\.1/forego/COPY --from=forego-build \/src\/forego\/forego/g' Dockerfile.armhf
sed -ie 's/docker-gen-linux-amd64/docker-gen-linux-armhf/g' Dockerfile.armhf

echo ok