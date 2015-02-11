#
# Dockerfile for building Spark-perf test suite
#

FROM ubuntu:14.04

# build packages
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -yq python python-dev python-pip

# copy local checkout into /opt
ADD . /data

WORKDIR /data

ENTRYPOINT bin