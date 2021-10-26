#!/bin/sh
JAVA_VERSION=${1:-11}
BARGJAVA="--build-arg JAVA_VERSION=$JAVA_VERSION"
mvn clean package

docker build $BARGJAVA -t demoapp:$JAVA_VERSION-jdk       -f Dockerfile .
docker build $BARGJAVA -t demoapp:$JAVA_VERSION-jre       -f Dockerfile.jre .
docker build $BARGJAVA -t demoapp:$JAVA_VERSION-jre-slim  -f Dockerfile.jre-slim .
docker build $BARGJAVA -t demoapp:$JAVA_VERSION-jlink     -f Dockerfile.jlink .
docker build $BARGJAVA -t demoapp:$JAVA_VERSION-alpine    -f Dockerfile.alpine .
