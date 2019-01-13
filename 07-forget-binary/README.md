I committed a binary file a long time ago, how to make git forget about a file that was tracked but is now in .gitignore?

1. Run `. setup.sh`, then notice your history and working directory
2. Create a `.gitignore` file in the _root directory_ of this repository
3. Add `test.img` to the `.gitignore` file
4. Change the big binary file `. change-binary.sh`
5. Add and commit the large binary file.
  - What did you expect to happen? Git knows the file based on its similarity index, not by the name, so it's not untracking it at all.
6. For Git to ignore a file that is already being tracked, you need to run: `git rm --cached <file>`.
  - It should be noted that in general you also will want to get rid of these files! Tune in to Lars' session later. :wink:
