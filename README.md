# HelloWorldDocker

## Create Docker Image
```
docker build -t hello-world-docker:latest .
```

## Run Image as Container
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
