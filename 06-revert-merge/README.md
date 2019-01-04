### I want to undo a recursive merge (without GitHub)

> A merge happened locally, and then I pushed. I'd like to revert the merge and maintain all of committed history.

When reverting a merge, Git wants to know about the "parent" commits. The branch you were on when you merged is the parent, so we will refer to it as "1".

1. Run `. setup.sh`
2. Look at the log, and take lineage of commits' parents into account: `git lol`
3. Identify which branch is the "parent" branch of the merge, `md-files` in our case
4. Identify the merge commit
5. Revert the merge commit: `git revert -m <parent> <commit>`
  - ex: `git revert -m 1 cd4370f`
6. Look at the files and the log: `git lol`, and `ls`
7. Reset the activity: `. reset.sh` and `cd ..`
