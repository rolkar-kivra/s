#!/bin/sh

. `dirname $0`/header

for repo in ${repos}; do
    echo ${BLUE}${repo}${RESET}
    cd ${repo}
    git pull --ff-only | grep -v up-to-date
    git submodule update
    cd ..
done
