#!/bin/sh

. `dirname $0`/header

for repo in ${repos}; do
    echo ${HEAD}${repo}${RESET}
    cd ${repo}
    git grep --color $@
    cd ..
done | less -r
