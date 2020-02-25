#!/bin/bash


cp Dockerfile Dockerfile.armhf
sed -ie 's/s6-overlay-amd64/s6-overlay-armhf/g' Dockerfile.armhf
sed -ie 's/docker-gen-linux-amd64/docker-gen-linux-armhf/g' Dockerfile.armhf

echo ok