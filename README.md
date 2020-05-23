# hombre-mosquitto
![Docker Pulls](https://img.shields.io/docker/pulls/hombrelab/hombre-mosquitto) ![Docker Image Version (latest by date)](https://img.shields.io/docker/v/hombrelab/hombre-mosquitto) ![GitHub commit activity](https://img.shields.io/github/last-commit/hombrelab/hombre-mosquitto)

The [hombre-mosquitto](https://hub.docker.com/repository/docker/hombrelab/hombre-mosquitto) image is based on the [official Eclipse Mosquitto v1.6 alpine v3.10 image](https://hub.docker.com/_/eclipse-mosquitto).  
It is a customized Docker image for and by [@Hombrelab](me@hombrelab.com) to set up an MQTT server.

Includes:
- linux packages: bash, ca-certificates.  

Deployment examples:

Command line
```shell script
docker run \
    --name mosquitto \
    --detach \
    --restart unless-stopped \
    --volume /etc/localtime:/etc/localtime:ro \
    --publish 1883:1883 \
    hombrelab/hombre-mosquitto
```
Docker Compose
```yaml
    mosquitto:
        container_name: mosquitto
        restart: unless-stopped
        image: hombrelab/hombre-mosquitto
        volumes:
            - /etc/localtime:/etc/localtime:ro
        ports:
            - 1883:1883
```