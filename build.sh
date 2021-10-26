#!/bin/sh
docker build -t demoapp:jdk       -f Dockerfile .
docker build -t demoapp:jre       -f Dockerfile.jre .
docker build -t demoapp:jre-slim  -f Dockerfile.jre-slim .
docker build -t demoapp:jlink     -f Dockerfile.jlink .
docker build -t demoapp:alpine    -f Dockerfile.alpine .
