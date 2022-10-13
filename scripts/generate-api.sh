#!/bin/bash

GIT_REPO=$(git rev-parse --show-toplevel)

swift package --package-path ${GIT_REPO}/Modules --allow-writing-to-package-directory generate-api
