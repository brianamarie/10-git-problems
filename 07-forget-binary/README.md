### I need Git to ignore a binary file

> I committed a binary file a long time ago, how to make git forget about a file that was tracked but is now in .gitignore?

When files are defined in the `.gitignore` from the start, Git will always ignore them. But, if a file is already tracked by Git, adding the name to the `.gitignore` doesn't do any good.

1. Run `. setup.sh`, then notice your history and working directory
2. Create a `.gitignore` file in the _root directory_ of this repository
3. Add `test.img` to the `.gitignore` file
4. Add and commit the `.gitignore` file
4. Change directories back into this activity: `cd 07-forget-binary`
4. Change the big binary file `. change-binary.sh`
5. Add and commit the binary file.
  - What did you expect to happen? Git knows the file based on its similarity index, not by the name, so it's still tracked.
6. For Git to ignore a file that is already being tracked, you need to remove the cache: `git rm --cached test.img`

> Note: this does not remove the file from history, only from tracking and any _new_ commits.
