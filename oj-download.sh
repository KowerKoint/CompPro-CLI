#!/bin/zsh

set -eux

if [ "$(basename $(dirname $1))" = "contests" ]; then
  contest_name=$(basename $1)
  rm -rf Contests/${contest_name} || true
else
  contest_name=$(basename $(dirname $(dirname $1)))
  problem_name=$(basename $1)
  rm -rf Contests/AtCoder_${contest_name}/${problem_name} || true
fi

oj-prepare --config-file ./prepare.config.toml $1

if [ "$(basename $(dirname $1))" = "contests" ]; then
  for dir in Contests/AtCoder_${contest_name}/*; do
    cp ./template/template.cpp $dir/main.cpp
  done
else
  cp ./template/template.cpp Contests/AtCoder_${contest_name}/${problem_name}/main.cpp
fi
