# Dockerfile: hombre-mosquitto

FROM eclipse-mosquitto:1.6

ARG version

LABEL version="${version}"
LABEL description="Customized Mosquitto Docker image"
LABEL maintainer="Hombrelab <me@hombrelab.com>"
LABEL inspiration="getting things done my way"

RUN apk add --no-cache \
    bash \
    nano \
    ca-certificates
