#!/bin/sh

. `dirname $0`/header

for repo in ${repos}; do
    echo ${HEAD}${repo}${RESET}
    cd ${repo}
    git pull -p --ff-only | grep -v "Already up to date"
    git submodule update
    cd ..
done
