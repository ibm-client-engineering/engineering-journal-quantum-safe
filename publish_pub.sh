#!/bin/bash

GITHUB_SERVER_URL=$1
GITHUB_REPOSITORY=$2

#PAGES_URL=$(echo "$PAGES_URL" | sed -s "s/https:\/\///")

# GITHUB_REPOSITORY_OWNER = ibm-client-engineering
# BASE_DOMAIN = github.io
#GITHUB_SERVER_URL="https://github.com"
GITHUB_SERVER_URL=$(echo "$GITHUB_SERVER_URL" | sed -s "s/https:\/\///")
#GITHUB_REPOSITORY="ibm-client-engineering/engineering-journal-quantum-safe"
IFS=/ read -r -d '' ORG REPO < <(printf %s "$GITHUB_REPOSITORY")

document="astro.config.mjs"

sed -i "s/\bsite:.*/site: \'https:\/\/$ORG.github.io\',/" $document
sed -i "s/\bbase:.*/base: \'$REPO\',/" $document
sed -i "s/\bgithub:.*/github: \'https:\/\/$GITHUB_SERVER_URL\/$ORG\/$REPO\',/" $document