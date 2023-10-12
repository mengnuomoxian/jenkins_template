#!/bin/bash

export GOPROXY='https://goproxy.cn'
export GO111MODULE=on
export GOMODCACHE=/go/pkg/mod
#golangci-lint run --disable-all -E errcheck
#golangci-lint run -c ./build/ ./...

set -x
CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .
#CGO_ENABLED=0 go build -o main .
