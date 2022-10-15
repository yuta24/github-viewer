#!/bin/bash

GIT_REPO=$(git rev-parse --show-toplevel)

SWIFTLINT_VERSION=0.49.1
CREATE_API_VERSION=0.1.1

function setup_swiftlint() {
    curl -L "https://github.com/realm/SwiftLint/releases/download/${SWIFTLINT_VERSION}/portable_swiftlint.zip" -o ${GIT_REPO}/temp/swiftlint.zip
    unzip -oq ${GIT_REPO}/temp/swiftlint.zip -d ${GIT_REPO}/tools/swiftlint
}

function setup_generate-api() {
    curl -L "https://github.com/CreateAPI/CreateAPI/releases/download/${CREATE_API_VERSION}/create-api.artifactbundle.zip" -o ${GIT_REPO}/temp/create-api.zip
    unzip -oq ${GIT_REPO}/temp/create-api.zip -d ${GIT_REPO}/tools/create-api
}

function main() {
    mkdir ${GIT_REPO}/temp

    setup_swiftlint
    setup_generate-api

    rm -rf ${GIT_REPO}/temp
}

main
