#!/bin/sh
docker build \
    -t python_script \
    .

FILE=file.py
docker run \
    --rm \
    -v $(pwd):/src python_script \
    python:3
    python /src/$FILE