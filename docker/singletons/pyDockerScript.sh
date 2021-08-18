#!/bin/sh
FILE=file.py
docker run \
    --rm \
    -v $(pwd):/src \
    python:3
    python /src/$FILE
