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

temp_path=$($mktemp_command)
export $WERCKER_MKTEMP_ENVVAR=$temp_path

if [ "$WERCKER_MKTEMP_DIRECTORY" = "true" ] ; then
  success "succesfully created temporary directory at $temp_path and stored it in $WERCKER_MKTEMP_ENVVAR"
else
  success "succesfully created temporary file at $temp_path and stored it in $WERCKER_MKTEMP_ENVVAR"
fi