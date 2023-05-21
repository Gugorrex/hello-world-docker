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

## Auto Push to GHCR
Add a workflow to GitHub (see .github/workflows/docker-build-push.yml).
This builds and pushes the docker image every time when a push to the master branch happens.

## (Manual) Run / Install Watchtower
```
docker run -d --name watchtower -v /var/run/docker.sock:/var/run/docker.sock containrrr/watchtower
```

## Deploy the container with Watchtower
Deploy your container with Watchtower to enable automatic updates. 
You can use Docker Compose to define the deployment configuration.
(see docker-compose.yml)
Watchtower can also be deployed with the same docker-compose.yml
to manage and deploy all the containers together as a cohesive unit.

To run the setup:
```
docker-compose up -d
```

To stop everything:
```
docker-compose down
```
