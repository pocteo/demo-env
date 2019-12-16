#!/bin/bash

# PULL
git pull && \
git checkout candidate && \

# APPLY
kubectl -f kubernetes.yaml
