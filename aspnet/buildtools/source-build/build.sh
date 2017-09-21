#!/usr/bin/env bash

#echo on
set -x

sourceDir=../../../../buildtools

cp .dockerignore $sourceDir
cp Dockerfile $sourceDir

docker build --network none -t aspnet-build-tools:source-build -f $sourceDir/Dockerfile $sourceDir | tee docker-build.log

rm $sourceDir/.dockerignore
rm $sourceDir/Dockerfile
