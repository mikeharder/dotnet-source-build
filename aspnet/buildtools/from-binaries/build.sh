#!/usr/bin/env bash

#echo on
set -x

docker build -t aspnet-from-binaries:buildtools -f Dockerfile ../.. | tee docker-build.log
