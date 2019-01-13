#!/bin/bash

git checkout master
git reset --hard before-activity
git branch -D experiment
git tag -d before-activity
git tag -d reset-here
