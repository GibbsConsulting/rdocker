#!/usr/bin/env bash
#
# Build all docker images
#
for i in "pipeline"; do
  cd $i
  docker build -t $i .
  cd ..
done
