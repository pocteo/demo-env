#!/bin/bash

# PULL
git pull && \
git checkout candidate && \

# APPLY
kubectl apply -f kubernetes.yaml
