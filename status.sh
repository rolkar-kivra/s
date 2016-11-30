#!/bin/sh

. `dirname $0`/header

for repo in ${repos}; do
    echo ${BLUE}${repo}${RESET}
    cd ${repo}
    git status | grep -v "nothing to commit" | grep -v "up-to-date" | grep -v "On branch master"
    cd ..
done
