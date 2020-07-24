pp#!/bin/bash

BASEDIR=$(dirname $0)
kubectl apply -f ${BASEDIR}/microservices.yml
