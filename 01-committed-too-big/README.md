### Commit is too big

> That commit is too big. It should have been broken up into several commits.

1. Change directories into the activity file: `cd 01-committed-too-big`
2. Run `. setup.sh`
3. Look at the files and the history: `ls` and `git lol`
3. `git reset reset-here` to a certain commit, bringing the changes that should be broken up into the working directory
4. Use `git add -p` to be specific about how commits are formed. You can use `s` to split even further.
5. When you're done with the activity, run `. reset.sh` and `cd ..`
