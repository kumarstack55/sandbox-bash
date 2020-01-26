#!/usr/bin/env bash

f() {
  local tmp_file=$(mktemp)
  local var

  echo "line1" >$tmp_file
  echo "line2" >$tmp_file

  while read -r line; do
    var=$line
  done <$tmp_file

  echo "line: $line"
  [[ $line == "" ]] || exit 1

  echo "var: $var"
  [[ $var == "line2" ]] || exit 1
}

f

exit 0
