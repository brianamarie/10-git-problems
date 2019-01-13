### Can I force pull from the remote?

> I've made changes that seemingly conflict with the upstream changes. I don't want to keep mine, I just want to keep those from the remote! Can I force pull?

While there _is_ a `git push --force` command, there isn't a `git pull --force` command.

1. Change directories for this activity: `cd 10-force-pull`
2. Run `. setup.sh`
3. Make a major change to `10-force-pull/conflicts.md` (do NOT add or commit)
4. Try to pull: what happens?
5. Three options:
  1. Add and commit your changes, then `git pull`
  2. `git stash`, then pull, and then `git pop`
  3. Take the changes on master and overwrite your own: `git reset --hard origin/master`
