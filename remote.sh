#!/bin/sh

. `dirname $0`/header

for repo in ${repos}; do
    echo ${HEAD}${repo}${RESET}
    cd ${repo}
    git remote -v | grep -v :campanja/${repo}.git
    cd ..
done
