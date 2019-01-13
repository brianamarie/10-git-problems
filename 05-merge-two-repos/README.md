### I want to merge two repositories

1. Run the setup script: `. setup.sh`
1. Add the other repository as a second remote: `git remote add other-repo https://github.com/brianamarie/another-repository.git`
1. Before you try to merge, make sure you have all of the remote tracking branches for all remotes: `git fetch --all`
1. Try to merge the two repositories: `git merge other-repo/master` and notice the error message.
1. Since these two repositories have unrelated histories, we need to specify a particular type of merge: `git merge other-repo/master --allow-unrelated-histories`.

In practice, we would probably want to create a new repository to have the combined histories of both of the other repositories. Then, it would be best to archive the singular repositories.

1. You can see the combined history with the alias `git lol`

Reset the exercise.

1. `. reset.sh`
