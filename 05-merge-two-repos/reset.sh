#!/bin/bash

git checkout master
git reset --hard before-activity5
git tag -d before-activity5
remote=$(git remote show 2>&1)
others=${remote#origin}
echo $others
git remote remove $others
