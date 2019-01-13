#!/bin/bash

git config alias.lol "log --oneline --decorate --graph --all"
git tag before-activity8
git submodule add https://github.com/githubtraining/example-submodule.git
git commit -m 'adding submodule'
