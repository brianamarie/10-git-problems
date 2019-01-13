#!/bin/bash

git config alias.lol "log --oneline --decorate --graph --all"
git tag before-activity3
touch file1.md
git add file1.md
git commit -m 'file1.md'
touch file2.md
git add file2.md
git commit -m 'file2.md'
touch file3.md
git add file3.md
git commit -m 'file3.md'
touch file4.md
git add file4.md
git commit -m 'file4.md'
git checkout HEAD~2
