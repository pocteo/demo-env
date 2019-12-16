#!/bin/bash

# PULL
git pull && \
git checkout candidate && \

# APPLY
kubectl apply -f kubernetes.yaml && \

# SYNC
export COMMIT_SHA=$(git rev-parse --short=7 HEAD)
git fetch origin production && git checkout production && \
git checkout $COMMIT_SHA kubernetes.yaml && \
git commit -m "Manifest from commit $COMMIT_SHA" && \
git push origin production
