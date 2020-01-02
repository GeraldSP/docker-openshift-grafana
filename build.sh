#!/bin/bash
export VERSION=6.5.2
export MAINTAINER=gschmidt
docker build . -t ${MAINTAINER}/grafana:latest
docker tag ${MAINTAINER}/grafana:latest ${MAINTAINER}/grafana:${VERSION}
docker push ${MAINTAINER}/grafana:${VERSION}
docker push ${MAINTAINER}/grafana:latest
