#!/usr/bin/env bash
#
# Build all docker images
#
for i in "pipeline"; do
  cd $i
  docker build -t $i .
  cd ..
done

#
# Once built, use docker tag to tag the image
# and then docker push to upload it
#
# eg:
# docker tag HashGoesHere delsim/pipeline:0.0.0
# docker push delsim/pipeline
#
