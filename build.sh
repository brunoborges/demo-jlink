#!/bin/sh
docker build -t demoapp:jdk           -f Dockerfile.jdk .
docker build -t demoapp:jdk-alpine    -f Dockerfile.jdk-alpine .
docker build -t demoapp:jre           -f Dockerfile.jre .
docker build -t demoapp:jre-slim      -f Dockerfile.jre-slim .
docker build -t demoapp:jre-alpine    -f Dockerfile.jre-alpine .
docker build -t demoapp:jlink         -f Dockerfile.jlink .
docker build -t demoapp:jlink-alpine  -f Dockerfile.jlink-alpine .

docker build -t demoapp:alpine-zulu-jdk  -f Dockerfile.alpine-zulu-jdk .
docker build -t demoapp:alpine-zulu-jre  -f Dockerfile.alpine-zulu-jre .
docker build -t demoapp:alpine-zulu-jlink  -f Dockerfile.alpine-zulu-jlink .

