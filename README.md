# S

**Summary**

A set of scripts for managing all our cloned repositories.
The assumption is that all repos are stored flat, in the
same folder as this (s) repo.

**Usage**

Running one of these will recursively do a "git fetch" etc
in all the downloaded repos. The pull will only do --ff-only.

NOTE - beware that the scripts will not do a "checkout master"
So, the pull, status and diff will operate on the current branch.

* s/fetch.sh
* s/pull.sh
* s/status.sh
* s/diff.sh

Running this will clone a new repo

* s/clone.sh REPO
