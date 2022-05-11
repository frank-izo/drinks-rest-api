FROM python:3.7-alpine as production

ENV PYTHONUNBUFFERED 1

WORKDIR /app/

RUN apk add --no-cache --virtual .build-deps \
                                ca-certificates \
                                gcc \
                                postgresql-dev \
                                linux-headers \
                                musl-dev \
                                libffi-dev \
                                jpeg-dev zlib-dev \
                                bash


RUN pip3 install --upgrade pip
COPY ./requirements/prod.txt ./requirements/prod.txt
COPY Makefile ./Makefile
RUN pip3 install -r ./requirements/prod.txt

COPY . /app


FROM production as development

LABEL frank Amungo

ENV PYTHONUNBUFFERED 1

RUN pip3 install --upgrade pip
COPY ./requirements/dev.txt /requirements/dev.txt

RUN adduser -D user
USER user
RUN pip3 install -r requirements/dev.txt

COPY . /app













