FROM python:3.8.5-alpine

RUN pip3 install --upgrade pip3

COPY ./requirements.txt .
RUN pip3install -r requirements.txt

COPY ./app /app
WORKDIR /app