#!/bin/bash

FOREGO_TAG="$(cat Dockerfile | sed -n 's/.*releases\/download\/\(v[0-9\.]*\)\/forego.*/\1/p')"

FOREGO_DOCKERFLE="
FROM golang:1 AS forego-build
WORKDIR /src
RUN set -ex \\
    && go get github.com/tools/godep \\
    && git clone --branch='${FOREGO_TAG}' https://github.com/jwilder/forego \\
    && cd forego \\
    && make forego


"

echo "$FOREGO_DOCKERFLE$(cat Dockerfile)" > Dockerfile.armhf

gsed -i -E 's/ADD https:\/\/github.com\/jwilder\/forego\/releases\/download\/v0\.16\.1\/forego/COPY --from=forego-build \/src\/forego\/forego/g' Dockerfile.armhf
gsed -i -E 's/docker-gen-linux-amd64/docker-gen-linux-armhf/g' Dockerfile.armhf

echo ok