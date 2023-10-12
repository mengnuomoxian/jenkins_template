#!/bin/bash

CONFIG_BRANCH="master"
SERVICE_TAG=${TAG_NAME}

if [ -z ${TAG_NAME} ]; then
  CONFIG_BRANCH=${BRANCH_NAME}
  SERVICE_TAG=${BRANCH_NAME}
fi

SERVICE_NAME=health-xxx/${ServiceName}


set -x
cp ${WORKSPACE}@2/main .

docker rmi ${SERVICE_NAME}:${SERVICE_TAG} || true
set -x
docker build -t ${SERVICE_NAME}:${SERVICE_TAG} -f ./build/Dockerfile --build-arg BRANCH=${CONFIG_BRANCH} .
docker tag ${SERVICE_NAME}:${SERVICE_TAG} ${DockerRegistry}/${SERVICE_NAME}:${SERVICE_TAG}
set -x
docker push ${DockerRegistry}/${SERVICE_NAME}:${SERVICE_TAG}

if [ ! -z ${TAG_NAME} ]; then
  docker tag ${SERVICE_NAME}:${SERVICE_TAG} ${DockerRegistry}/${SERVICE_NAME}:latest
  docker push ${DockerRegistry}/${SERVICE_NAME}:latest
  docker rmi ${DockerRegistry}/${SERVICE_NAME}:latest || true
fi

docker rmi ${DockerRegistry}/${SERVICE_NAME}:${SERVICE_TAG} || true