#!/bin/bash

set -x
if [ ${BRANCH_NAME} == "release" ]; then
  curl -X POST http://10.10.102.85:5600/api/stacks/webhooks/62f35792-3762-4ed9-bff2-bc6d176df76d
elif [ ! -z ${TAG_NAME} ]; then
  echo "请手动启动服务"
#  curl -X POST http://docker-registry.gczx.cn/api/stacks/webhooks/xxx
fi