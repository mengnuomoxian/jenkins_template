#!/bin/bash

set -x
if [ ${BRANCH_NAME} == "release" ]; then
  curl -X POST http://10.10.102.85:5600/api/stacks/webhooks/92bb1ab0-9947-472f-a9e0-e4e0e536baf9
elif [ ! -z ${TAG_NAME} ];then
  echo "请手动启动服务"
#  curl -X POST http://docker-registry.gczx.cn/api/stacks/webhooks/xxx
fi