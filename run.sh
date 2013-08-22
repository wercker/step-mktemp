#!/bin/sh
set -e

if [ ! -n "$WERCKER_MKTEMP_ENVVAR" ]
then
  fail "missing or empty envvar, please check your wercker.yml"
fi

mktemp_command="mktemp"

if [ "$WERCKER_MKTEMP_DIRECTORY" = "true" ] ; then
  mktemp_command="$mktemp_command -d"
fi

export $WERCKER_MKTEMP_ENVVAR=$(mktemp_command)