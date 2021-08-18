#!/bin/sh
docker run \
    --rm \
    -d \
    --name nginx_server
    -v $(pwd)/html:/usr/share/nginx/html \
    -p 8080:80 \ # -p local:container
    nginx:latest


# stop
# docker stop nginx_server

# interact
# docker exec -it nginx_server /bin/bash