#!/bin/bash -x

cd ..
REGISTRY=$1
docker build mesosphere-jenkins-dind -t arangodb/mesosphere_jenkins
docker tag arangodb/mesosphere_jenkins ${REGISTRY}/arangodb/mesosphere_jenkins
docker push ${REGISTRY}/arangodb/mesosphere_jenkins
