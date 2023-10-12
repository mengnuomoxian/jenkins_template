#FROM 10.10.102.198:5500/jdk8u341:v2
FROM 10.10.102.198:5500/jdk11:v1

ARG BRANCH

WORKDIR /gczx/gc-iot-cert/
COPY ./gc-iot-cert-0.0.1-SNAPSHOT.jar /gczx/gc-iot-cert/gc-iot-cert-0.0.1-SNAPSHOT.jar

ENV PATH=$PATH:/gczx/gc-iot-cert

EXPOSE 8040

RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone
ENTRYPOINT ["java","-jar","gc-iot-cert-0.0.1-SNAPSHOT.jar"]