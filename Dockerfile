FROM alpine:3.6 

MAINTAINER Minimum Builds <minumumbuilds@gmail.com>
ARG BUILD_DATE
ARG VCS_REF
LABEL Name=alpine_python3 \
      Version=0.1.3 \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/minimumbuilds/alpine_python3.git" \
      org.label-schema.vcs-ref=$VCS_REF
RUN apk add --update \
    python3 
