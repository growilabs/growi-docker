#!/bin/sh

sed -i -e "s/^\(ENV APP_VERSION v\).\+$/\1${RELEASE_VERSION}/" Dockerfile
sed -i -e "s/^\([*] \[\`\)[^\`]\+\(\`, \`3\.1\`, .\+\]\)\(.\+\/blob\/v\).\+\(\/Dockerfile.\+\)$/\1${RELEASE_VERSION}\2\3${RELEASE_VERSION}\4/" README.md
