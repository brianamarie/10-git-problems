### I want to undo a rebase

> I rebased onto the wrong branch!

A rebase is done to force a fast-forward merge, and result in a straight line of history. To go back, you usually need to use `git reflog`. It's not intuitive or easy to find the correct commit to reset to.

1. Change directories for this activity: `cd 09-undo-rebase`
2. Run `. setup.sh`
  - This script creates new commits on master and on the `md-files` branch, then rebases the `md-files` branch onto `master`
3. See the history with `git lol`
  - Notice a tag? The script also tagged the commit _before_ the rebase took place.
4. Using the `git reflog`, identify the most recent commit by message, and find the last instance of it in the reflog
5. Use that commit ID or the tag to reset the branch: `git reset --hard before-rebase`
6. See your history, as it was before the reset: `git lol`
7. Reset the activity: `. reset.sh` and `cd ..`
