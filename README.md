## 10 Sticky Git Situations and how to get out of them

Popular shoutouts to:
- ohshitgit.com, @oshitgit and @ksylor
- Michael Kohn "10 Common Git Problems and How to Fix Them"

to make changes: https://www.poll-maker.com/#QP2174147x0EB5A641-62
poll: https://linkto.run/p/626BFB2L
results: https://linkto.run/r/626BFB2L

### Starters
> Note: I'd also like to add a section to each of these on how to _avoid_ these problems in the first place where possible.

#### Old problems
- I committed a binary file _a long time ago_ (How to make Git “forget” about a file that was tracked but is now in .gitignore?)
- I just realized I stashed a bunch of stuff from old projects, how do I clean it up?
- Something's been broken, but I don't know what commit broke it.

#### Branch problems
- I committed to master instead of a branch

#### Merge problems
- I incorrectly resolved a merge conflict

#### Remote problems
- I force pushed when I thought I was fixing something but it was a mistake
- I've forked a repository and I want to get my local version up to date with the upstream fork
- How do I force “git pull” to overwrite local files?
- I want to share a certain alias with the whole team

#### Head problems
- I'm in a detached head state
- I'm in the middle of a bisect or merge or something...help!

#### Undoing problems
- I want to undo a rebase
- Most asked on stackoverflow: How do I undo the most recent commits in Git? I accidentally committed the wrong files to Git, but I haven't pushed the commit to the server yet. How can I undo those commits from the local repository?
- I want to revert a merge (without GitHub :troll:)

#### Multiple repo problems
- I cloned a repo inside a repo
- I need to apply a patch from an unrelated local repository
- I think my root directory is a git repository
- I need to combine 2 repositories
- I want to split my repository into two repositories

#### Submodule problems
- I've rolled back to an old version of a submodule :troll:
- How do I remove a submodule?

#### UI problems
- I'm colorblind and/or I want to change git bash
- How do I make Git use the editor of my choice for commits?

#### Working tree problems
- I got myself into trouble with cases, and I can't add and commit the right version of my file :omg:
- How can I Commit only part of a file in Git? (or, remove commits where I committed too much of a file?), and re-do it (reset, then add -p))


----
1

committed-too-big

----
2

I committed to master instead of a branch

IF the commit isn't pushed...
- Commit on master that should have been on a branch
- User should `git reset`, then `git checkout -b`, then make the commit
- OR
- User can `git checkout -b`, then `git cherry-pick` the commit, then push. `git checkout master`, and `git reset --hard origin/master`.
IF the commit is pushed...oh well.

----
3

I'm in a detached head state

- Checkout to a branch
- OR
- Create a branch

----
4

Something's been broken, but I don't know what commit broke it.

Git bisect!
- Have a history, with a bunch of commits.
- Some behavior is expected. We need to be able to test this behavior.
  - Q: If a test is committed, can you use it during bisect?
- Use bisect to find the commit

----
5

I want to merge two repositories
https://medium.com/altcampus/how-to-merge-two-or-multiple-git-repositories-into-one-9f8a5209913f

----
6

I want to revert a merge without GitHub

- use Git Revert but you have to figure out the parent
- to identify parent, use a regular git revert but like `git revert -m 1 commit-ID`. 1 = the parent of the merge, aka the branch you were on when you merged. "the branch you're on is the branch that will change" = that branch is the one we specify here if we use 1, and it means we want to _keep_ that version.

----
7

I committed a binary file a long time ago, how to make git forget about a file that was tracked but is now in .gitignore?
