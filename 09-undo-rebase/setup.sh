#!/bin/bash

git config alias.lol "log --oneline --decorate --graph --all"
git tag before-activity9
git checkout -b md-files
for d in {1..6}; do touch "file${d}.md"; git add "file${d}.md"; git commit -m "adding file ${d} (md)"; done
git checkout master
for d in {1..6}; do touch "file${d}.txt"; git add "file${d}.txt"; git commit -m "adding file ${d} (txt)"; done
git checkout md-files
git tag before-rebase
git rebase master
