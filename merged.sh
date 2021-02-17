#!/bin/sh

. `dirname $0`/header

for repo in ${repos}; do
    echo ${HEAD}${repo}${RESET}
    cd ${repo}
    if [ -z "`git branch -l main`" ]
    then
        git branch --color -a --merged master | grep -v master
    else
        git branch --color -a --merged main | grep -v main
    fi
    cd ..
done
