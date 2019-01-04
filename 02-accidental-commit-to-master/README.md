### Accidental Commit

> I committed to master instead of a branch!

1. Change directories into the activity file: `cd 02-accidental-commit-to-master`
2. Run `. setup.sh`
3. Use `git lol` and `git status` to see the current state of your repository
4. Reset back to the last commit that was meant to be on master: `git reset reset-here`
  - Alternatively, you could reset to `origin/master` also
5.  Use `git lol` and `git status` again
6. Create a new branch and checkout to it with `git checkout -b experiment`
  - Notice your working and staging area will come with `HEAD`
7. Stage your changes, and make a commit
8. Once you're finished, run `. reset.sh` and `cd ..`
