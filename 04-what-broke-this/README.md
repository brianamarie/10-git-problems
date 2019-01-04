### What broke my code?

> Something's been broken, but I don't know what commit broke it.

There's a test in this directory, checking if any file is empty or not. This only _finds_ the commit introducing the break, it doesn't fix it at all.

1. Change directories into the activity file: `cd 04-what-broke-this`
2. See the test with `ls`, and try it with `. test.sh`
3. To get set up, run the scripts `. setup.sh`
4. Use the test `. test.sh` to find if something's broken
5. Before you can use bisect, you need to be in the root directory of the repository: `cd ..`
6. Try the test again: `. 04-what-broke-this/test.sh`
7. Begin the bisect: `git bisect start`
8. Tell Git where the "broken" commit is: `git bisect bad HEAD`
9. Tell Git where the last known "good" commit was: `git bisect good before-activity4`
10. After Git moves your `HEAD` pointer to a different commit, try your test again: `04-what-broke-this/test.sh`
11. Depending on the results of the test, type `git bisect good` or `git bisect good`
12. Continue until Git finds the commit
13. Exit the bisect: `git bisect reset`
14. Reset the files: `. 04-what-broke-this/reset.sh`
