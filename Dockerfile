#stage 1
FROM node:alpine as node
LABEL org.opencontainers.image.source="https://github.com/Gugorrex/hello-world-docker"
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build --prod

#stage 2
FROM nginx:alpine
COPY --from=node /app/dist/hello-world-docker /usr/share/nginx/html
