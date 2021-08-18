#!/bin/sh
docker run \
    --rm \
    -it \
    -v $(pwd):/src \
    python:3
