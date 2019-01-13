#!/bin/bash

git config alias.lol "log --oneline --decorate --graph --all"
git tag before-activity7
dd if=/dev/zero of=test.img bs=1024 count=0 seek=1024
git add test.img
git commit -m "large image file"
for d in {1..6}; do touch "file${d}.md"; git add "file${d}.md"; git commit -m "adding file ${d} (md)"; done
