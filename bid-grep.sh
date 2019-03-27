#!/bin/sh

. `dirname $0`/header

repos="base_bidder bidpipe_fmt bulkbuilder differ effector eqw eqw_sqs inciter modciter indexer picker piper chunker"

for repo in ${repos}; do
    echo ${HEAD}${repo}${RESET}
    cd ${repo}
    git grep --color -i $@
    cd ..
done | less -r
