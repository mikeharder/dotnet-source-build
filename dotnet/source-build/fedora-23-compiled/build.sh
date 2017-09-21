#!/usr/bin/env bash

#echo on
set -x

docker build -t dotnet-source-build:fedora-23-compiled . | tee docker-build.log
