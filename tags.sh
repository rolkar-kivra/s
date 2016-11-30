#!/bin/sh

. `dirname $0`/header

for repo in ${repos}; do
    echo ${BLUE}${repo}${RESET}
    cd ${repo}
    git tag
    cd ..
done
