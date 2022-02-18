#!/bin/zsh

set -eux

directory_name="Contests/$(basename $1)"
if [ "$(basename $(dirname $1))" = "contests" ]; then
  rm -rf ${directory_name}_* || true
else
  rm -rf ${directory_name} || true
fi

oj-prepare --config-file ./prepare.config.toml $1

if [ "$(basename $(dirname $1))" = "contests" ]; then
  for dir in ${directory_name}_*; do
    cp ./template/template.cpp $dir/main.cpp
  done
else
  cp ./template/template.cpp $directory_name/main.cpp
fi
