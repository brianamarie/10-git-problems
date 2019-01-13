#!/bin/bash

git checkout master
git branch -D md-files
git reset --hard before-activity6
git tag -d before-activity6
