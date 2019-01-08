#!/bin/sh

. `dirname $0`/header

EXTRA=
if [ $1 = "-a" ]; then
    EXTRA=-a
fi

for repo in ${repos}; do
    echo ${HEAD}${repo}${RESET}
    cd ${repo}
    git branch --color ${EXTRA}
    cd ..
done
