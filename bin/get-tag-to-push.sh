#!/bin/bash

# https://regex101.com/r/sxGQtU/2
if [[ $RELEASE_VERSION =~ ^([0-9]+)\.([0-9]+)\.([0-9]+)(-RC[0-9]*)?$ ]] ;
then
  all=${BASH_REMATCH[0]}
  major=${BASH_REMATCH[1]}
  minor=${BASH_REMATCH[2]}
  patch=${BASH_REMATCH[3]}
  rc=${BASH_REMATCH[4]}

  # set '3.2.1-RC, 3.2.1-RC.20180101125959, 3.2.1-xxxxxx' if RC
  if [ ${#rc} -ne 0 ] ;
  then
    now=`date +"%Y%m%d%I%M%S"`
    TAGS_TO_PUSH1=${all}
    TAGS_TO_PUSH2=${all}.${now}
    TAGS_TO_PUSH3=${all}.${GROWI_REPOS_GIT_COMMIT:0:6}
  else
    # set '3.2.1, 3.2, 3'
    TAGS_TO_PUSH1=${major}.${minor}.${patch}
    TAGS_TO_PUSH2=${major}.${minor}
    TAGS_TO_PUSH3=${major}
  fi

  case $1 in
    "1" ) TAGS_TO_PUSH=$TAGS_TO_PUSH1 ;;
    "2" ) TAGS_TO_PUSH=$TAGS_TO_PUSH2 ;;
    "3" ) TAGS_TO_PUSH=$TAGS_TO_PUSH3 ;;
  esac
  echo -n $TAGS_TO_PUSH

fi
