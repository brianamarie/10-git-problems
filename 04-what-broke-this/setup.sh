#!/bin/bash

git config alias.lol "log --oneline --decorate --graph --all"
git tag before-activity4
touch file1.md
echo "This is the first file! :tada:" >> file1.md
git add file1.md
git commit -m 'unhelpful commit message'
touch file2.md
echo "This is the second file! :balloon:" >> file2.md
git add file2.md
git commit -m 'unhelpful commit message'
touch file3.md
git add file3.md
git commit -m 'unhelpful commit message'
touch file4.md
echo "This is the fourth file! :sparkles:" >> file4.md
git add file4.md
git commit -m 'unhelpful commit message'
touch file5.md
echo "This is the fifth file! :cake:" >> file5.md
git add file5.md
git commit -m 'unhelpful commit message'
