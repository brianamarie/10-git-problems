#!/bin/bash

git config alias.lol "log --oneline --decorate --graph --all"
git tag before-activity10
git reset --hard HEAD~1
