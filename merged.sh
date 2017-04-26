#!/bin/sh

. `dirname $0`/header

for repo in ${repos}; do
    echo ${HEAD}${repo}${RESET}
    cd ${repo}
    git branch --color -a --merged master | grep -v master
    cd ..
done
