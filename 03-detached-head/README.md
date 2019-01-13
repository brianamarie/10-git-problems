### I'm in a detached head state

1. Run `. setup.sh`

A detached head state only means that your `HEAD` pointer is currently pointed _not_ to a branch.

2. You can see this by typing `git lol` (an alias was set in the setup script)

To fix this, to get your `HEAD` attached, you need to point to a branch. You can do this by checking out to an existing branch, or creating a new branch where you are.

3. Let's create a new branch where we are with `git checkout -b more-work`

Now, you're no longer in a detached head state. You can continue working normally on your new branch.

4. Reset the activity with `. reset.sh`
