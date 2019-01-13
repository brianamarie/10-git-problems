### Commit is too big

How can I commit only part of a file in Git? (Or, revise commits where I committed too much?)

1. Run `. setup.sh`

Look at the files and history that's been created. You'll see that several files and a history have been created. We want to change the history so the commits are more logical.

First, we need to move those changes back into the working directory so we can re-stage and re-commit.

2. `git reset reset-here` to a certain commit, bringing the changes that should be broken up into the working directory.
3. Use `git add -p` to be specific about how commits are formed. You can use `s` to split even further.
4. When you're done with the activity, run `. reset.sh`.
