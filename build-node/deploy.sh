#!/bin/bash

set -x
if [ ${BRANCH_NAME} == "release" ]; then
  curl -X POST http://10.10.102.85:5600/api/stacks/webhooks/a59e6c5f-dea1-4340-b1d8-7c7a893646a5
elif [ ! -z ${TAG_NAME} ];then
  echo "请手动启动服务"
#  curl -X POST http://docker-registry.gczx.cn/api/stacks/webhooks/xxx
fi
