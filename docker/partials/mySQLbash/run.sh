# network containers
docker network create multiple

# mysql container
docker run \
    -d \
    --net multiple \
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
