#!/bin/bash

set -x
node -v
npm -v
cnpm -v
yum -y install autoconf-2.69-11.el7.noarch
yum -y install automake-1.13.4-3.el7.noarch
npm install --ignore-scripts || true
npm ls
npm uninstall image-webpack-loader
cnpm install image-webpack-loader --save-dev
npm run build
