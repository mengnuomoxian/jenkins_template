#!/bin/bash

set -x
if [ ${BRANCH_NAME} == "release" ]; then
  curl -X POST http://10.10.102.85:5600/api/stacks/webhooks/0f8a17d6-e221-4bb8-b988-1f7c030d5980
elif [ ! -z ${TAG_NAME} ];then
  echo "请手动启动服务"
#  curl -X POST http://docker-registry.gczx.cn/api/stacks/webhooks/xxx
fi
