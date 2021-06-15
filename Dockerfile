FROM alpine:latest

RUN apk update

RUN apk add ansible

RUN apk add make

RUN apk add py-pip

RUN pip install winrm

RUN mkdir /ansible

WORKDIR /ansible
