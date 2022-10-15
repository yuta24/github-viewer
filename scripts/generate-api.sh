#!/bin/bash

GIT_REPO=$(git rev-parse --show-toplevel)

${GIT_REPO}/tools/create-api/create-api.artifactbundle/create-api-macos/bin/create-api \
    generate ${GIT_REPO}/api/github.json --config ${GIT_REPO}/.create-api.yaml --output ${GIT_REPO}/Modules/Sources/GitHubAPI/Generated
