FROM alpine:3.11
ARG BUILD_DATE

LABEL maintainer="7of9@ydevops.com"
LABEL org.label-schema.build-date=$BUILD_DATE

ENV REFRESHED_AT 2020-04-18

RUN apk update && apk upgrade

RUN mkdir -p /opt/server
ENV HOME /opt/server
WORKDIR /opt/server
VOLUME ["/etc", "/var/log", "/home", "/root"]
