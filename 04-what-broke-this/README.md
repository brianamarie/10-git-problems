### What broke my code?

Something's been broken, but I don't know what commit broke it.

There's a test in this directory, checking if any file is empty or not.

1. `ls`
1. `. test.sh`

To get set up, run the scripts:

2. `. setup.sh`
3. `. test.sh` to find something's broken

Before you can use bisect, you need to be in the root directory of the repository.

1. `cd ..`
1. `. 04-what-broke-this/test.sh`
1. `git bisect start`
1. `git bisect bad HEAD`
1. `git bisect good before-activity4`
1. `. 04-what-broke-this/test.sh`
1. `git bisect good` or `git bisect good`, depending on the results of the test
1. Continue until it finds the commit
1. `git bisect reset`
1. `. 04-what-broke-this/reset.sh`
