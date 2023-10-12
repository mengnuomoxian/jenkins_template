FROM webdevops/php-nginx:7.2-alpine

ARG BRANCH

COPY . /app/dev_api
COPY ./builds/nginx.conf /etc/nginx/nginx.conf
COPY ./builds/dev_api.conf /opt/docker/etc/nginx/conf.d/

RUN mkdir -p /app/dev_api/public/tmp/
RUN chmod 777 -R /app/dev_api/runtime/
RUN chmod 777 -R /app/dev_api/public/
#COPY ./config/config-$BRANCH.yml /gczx/gc-iot-cert/config.yml

ENV PATH=$PATH:/gczx/dev_api

EXPOSE 8414
