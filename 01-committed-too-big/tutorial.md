## Commit is too big

How can I commit only part of a file in Git? (Or, revise commits where I committed too much?)

This could happen if you have been careless with your commits, or you aren't yet sure how to only commit part of a file at a time.

This scenario covers a commit with a few changes that we'll break up into smaller commits.

### Important commands
- `git add -p`, and `s` optiona
- `git reset` (`--mixed`, or default, mode)

### Getting started

#### 1. Run the setup script

```sh
cd 01-committed-too-big
. setup.sh
```

If you haven't already changed directories into the directory for the exercises, start there. Then, run the setup script to prepare the situation for you to work through.

#### 2. See the state of the repository

```sh
git lol
git status
```

Look at the files and history that's been created. You'll see that several files and a history have been created. We want to change the history so the commits are more logical. You can use `git status` and `git lol`, an alias created by the script.

First, we need to move those changes back into the working directory so we can re-stage and re-commit.

Notice that the setup script added a few tags. One of these tags, `before-activity`, will be used to clean up the repository after we're done with this activity. The other tag, `reset-here`, points to the commit we'd like to "reset" to. This is the point _before_ we made the too-big commit.

#### 3. Reset

```sh
git reset reset-here
```

This will reset to a certain commit, bringing the changes that should be broken up into the working directory.

This reset mode is default, or `--mixed`. The `git reset --mixed` command:
- moves the `HEAD` pointer to wherever you specify
- takes any work from the removed commits and moves it to the working directory
  - this also affects work in the staging area

#### 4. Add the changes
3. Use `git add -p` to be specific about how commits are formed. You can use `s` to split even further.

#### 5. Reset
4. When you're done with the activity, run `. reset.sh`.
