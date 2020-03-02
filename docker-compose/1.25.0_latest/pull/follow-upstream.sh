#!/bin/bash
set -eux

sed -ie 's/IMAGE="docker\/compose:$VERSION"/IMAGE="satackey\/docker-compose:$VERSION/' script/run/run.sh

cp Dockerfile Dockerfile.linux_amd64
cp Dockerfile Dockerfile.linux_arm_v7
cp Dockerfile Dockerfile.linux_arm64
