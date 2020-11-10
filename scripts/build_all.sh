#!/usr/bin/env bash
#
# Build all docker images
#
source scripts/env_vars.sh

for i in `find -name Dockerfile | gawk -F/ '{print $2}'`; do
    cd $i
    if test -f "makefile"; then
        make
    fi
    docker build -t ${DOCKER_USER}/$i -t ${DOCKER_USER}/$i:${BUILD_VERSION} .
    cd ..
done

#
# Once built, use docker push to upload it
#
# eg:
# docker push delsim/pipeline
#
