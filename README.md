# Mongodb Docker image for Raspberry Pi 4

This is a Docker image for Raspberry Pi 4 that runs MongoDB. It was only built to make https://artifacthub.io/packages/helm/bitnami/mongodb work on Raspberry Pi 4.

## Image

The image is available on Docker Hub: https://hub.docker.com/r/dariomader/mongodb-rpi4

```bash
docker run -d -p 27017:27017 dariomader/mongodb-rpi4
```
