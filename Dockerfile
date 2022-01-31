FROM alpine:latest

RUN apk update
RUN apk upgrade
RUN apk add openjdk8 screen

WORKDIR /opt
RUN mkdir minecraft
COPY minecraft.sh minecraft.sh
RUN chmod +x minecraft.sh
