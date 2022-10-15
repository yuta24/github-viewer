#!/bin/bash

VERSION=v2.0.0

GIT_REPO=$(git rev-parse --show-toplevel)

curl https://raw.githubusercontent.com/github/rest-api-description/${VERSION}/descriptions/api.github.com/api.github.com.json \
    -o ${GIT_REPO}/api/github.json
