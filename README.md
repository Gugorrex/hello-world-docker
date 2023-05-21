# HelloWorldDocker
Docker, GHCR (Auto Image Push), WatchTower (Auto Image Pull), Angular Website

## Scope
- [x] build hello world angular app
- [x] create docker image of app
- [x] successfully run image
- [x] (manually) upload image to GHCR
- [x] automatically upload image with GitHub workflow
- [ ] use WatchTower on server to automatically pull and run image from GHCR

## Create Docker Image
general:
```
docker build -t hello-world-docker:<tag> .
```
latest:
```
docker build -t hello-world-docker:latest .
```

## Run Image as Container
general:
```
docker run -d -p 80:80 --name hello-world-docker-container hello-world-docker:<tag>
```
latest:
```
docker run -d -p 80:80 --name hello-world-docker-container hello-world-docker:latest
```

## Check running Containers
```
docker ps
```

## Stop Container
```
docker stop hello-world-docker-container
```
<b>hello-world-docker-container</b> must be set as name when starting up an image

## Tag Image before Push
general:
```
docker tag hello-world-docker ghcr.io/gugorrex/hello-world-docker/hello-world-docker:<tag>
```
latest:
```
docker tag hello-world-docker ghcr.io/gugorrex/hello-world-docker/hello-world-docker:latest
```

## Push Image
general:
```
docker push ghcr.io/gugorrex/hello-world-docker/hello-world-docker:<tag>
```
latest:
```
docker push ghcr.io/gugorrex/hello-world-docker/hello-world-docker:latest
```

## Pull Image
general:
```
docker pull ghcr.io/gugorrex/hello-world-docker/hello-world-docker:<tag>
```
latest:
```
docker pull ghcr.io/gugorrex/hello-world-docker/hello-world-docker:latest
```
