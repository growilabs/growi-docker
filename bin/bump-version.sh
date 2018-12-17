#!/bin/sh

sed -i -e "s/^\(ENV APP_VERSION v\).\+$/\1${RELEASE_VERSION}/" Dockerfile
sed -i -e "s/^\(ENV APP_VERSION v\).\+$/\1${RELEASE_VERSION}/" nocdn/Dockerfile
sed -i -e "s/^\([*] \[\`\)[^\`]\+\(\`, \`3\.3\`, .\+\]\)\(.\+\/blob\/v\).\+\(\/Dockerfile.\+\)$/\1${RELEASE_VERSION}\2\3${RELEASE_VERSION}\4/" README.md
sed -i -e "s/^\([*] \[\`\)[^\`]\+\(\`, \`3\.3-nocdn\`, .\+\]\)\(.\+\/blob\/v\).\+\(\/nocdn\/Dockerfile.\+\)$/\1${RELEASE_VERSION}-nocdn\2\3${RELEASE_VERSION}\4/" README.md
