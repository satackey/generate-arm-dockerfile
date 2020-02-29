#!/bin/bash

set -ex

sed -ie 's/IMAGE="docker\/compose:$VERSION"/IMAGE="satackey\/docker-compose:$VERSION/' script/run/run.sh
