#!/bin/bash

if [[ $RELEASE_VERSION =~ .+-RC[0-9]*$ ]] ;
then
  echo RC version is released
  exit 1
fi

echo Normal version is released   # DEBUG
exit 1                            # DEBUG
