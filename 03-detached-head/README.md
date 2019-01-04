### I'm in a detached head state

> Git says I'm in a "detached head state" and I don't know what to do.

A detached head state only means that your `HEAD` pointer is currently pointed _not_ to a branch.

To fix this, to get your `HEAD` attached, you need to point to a branch. You can do this by checking out to an existing branch, or creating a new branch where you are.

1. Change directories into the activity file: `cd 03-detached-head`
2. Run `. setup.sh`
3. See where your `HEAD` is pointing with `git lol`
4. Let's create a new branch where we are with `git checkout -b more-work`
  - Now, you're no longer in a detached head state, and can continue working normally on your new branch
5. Reset the activity with `. reset.sh` and `cd ..`
