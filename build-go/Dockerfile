FROM 10.10.102.198:5500/gczx/alpine-go:latest

ARG BRANCH

WORKDIR /app
COPY ./main /app/
COPY ./config/config-$BRANCH.yml /app/config.yml

ENV PATH=$PATH:/app

#EXPOSE 1883 8883 8082 8083 8084

RUN chmod +x main
CMD ./main