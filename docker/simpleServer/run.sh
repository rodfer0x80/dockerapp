#!/bin/sh
# network containers
docker network create multiple

# python app
docker build \
    -t python_script \
    .

docker run \
    --rm \
    -v $(pwd)/src:/src python_script \
    --name py_app \
    python:3
    python /src/main.py


# mysql container
docker run \
    -d \
    --net multiple \
    -v $(pwd)/mysql:/var/lib/mysql
    --name mysql_db \
    -e MYSQL_ROOT_PASSWORD='root' \
    mysql:5.6


# python container
docker run \
    --rm \
    -it \
    --net multiple
    --name debian_bash \
    debian:latest \
    /bin/bash


# nginx server
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

