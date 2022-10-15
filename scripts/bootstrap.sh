#!/bin/bash

GIT_REPO=$(git rev-parse --show-toplevel)

SWIFTLINT_VERSION=0.49.1

function setup_swiftlint() {
    curl -L "https://github.com/realm/SwiftLint/releases/download/${SWIFTLINT_VERSION}/portable_swiftlint.zip" -o ${GIT_REPO}/temp/swiftlint.zip
    unzip -oq ${GIT_REPO}/temp/swiftlint.zip -d ${GIT_REPO}/tools/swiftlint
}

function main() {
    mkdir ${GIT_REPO}/temp

    setup_swiftlint

    rm -rf ${GIT_REPO}/temp
}

main
