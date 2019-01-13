#!/bin/bash

git config alias.lol "log --oneline --decorate --graph --all"
git tag before-activity
git tag reset-here
touch experiment.md
git add experiment.md
git commit -m "Let's just see if this works!"
