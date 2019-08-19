#!/usr/bin/env sh

JENKINS_VERSION=2.190-jdk11

docker build --build-arg JENKINS_VERSION=${JENKINS_VERSION} -t circulo7/jenkins_kube:${JENKINS_VERSION} . && docker push circulo7/jenkins_kube:${JENKINS_VERSION} && git release $JENKINS_VERSION