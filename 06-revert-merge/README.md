### I want to undo a recursive merge (without GitHub)

1. Run `. setup.sh`
2. Look at the log, and take lineage of commits' parents into account: `git lol` (alias set during script)
3. Identify which branch is the "parent" branch of the merge. (The branch you were on when you merged is the parent, so we will refer to it as "1".) The parent in this case is `md-files`. We want to revert the merge, and _keep_ the files that were originally on this branch, the markdown files.
4. Identify the merge commit.
5. Revert the merge commit: `git revert -m <parent> <commit>`.

- ex: `git revert -m 1 cd4370f`

6. Look at the files and the log: `git lol`, and `ls`
7. Reset the activity: `. reset.sh`
