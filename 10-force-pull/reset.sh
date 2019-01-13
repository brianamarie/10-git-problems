#!/bin/bash

git checkout master
git reset --hard before-activity10
git tag -d before-activity10
git branch -D conflicting-local-changes
#delete the branch on the remote
git fetch --prune
