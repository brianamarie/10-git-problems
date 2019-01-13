### Accidental Commit

I committed to master instead of a branch!

This will use `git reset`, so you should first check that:
- The commits in question are _only local_.
- There are no unintended files in your working or staging directory.

#### Getting started
1. Run `. setup.sh`.
  - This sets a local alias, `git lol`. Use `git lol` and `git status` to see the current state of your repository.
2. Use `git reset` back to the last commit that was meant to be on master.
  - Normally, you could use `git reset origin/master`. For today, use the `reset-here` tag: `git reset reset-here`.
  - Use `git lol` and `git status` again.
3. Create a new branch and checkout to it with `git checkout -b experiment`. (Your working and staging area will come with you!)
4. Stage your changes, and make a commit.
  - :tada: Yay, the commit is now where it should be!
5. Once you're finished, run `. reset.sh`.
