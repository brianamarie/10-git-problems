### I want to undo a rebase

A rebase is done to force a fast-forward merge, and result in a straight line of history.

1. Run `. setup.sh`
2. See the history with `git lol`
3. It's not intuitive or easy to find the correct commit to reset to.
4. Using the `git reflog`, identify the most recent commit by message, and find the last instance of it in the reflog. Use that commit ID for the reset.
