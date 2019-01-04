### I want to merge two repositories

> There are two separate project repositories that should be in one repository, but they have unrelated histories.

In practice, you might want to create a new repository to have the combined histories of both of the other repositories. Then, it would be best to archive the singular repositories.

1. Run the setup script: `. setup.sh`
2. Add the other repository as a second remote: `git remote add other-repo https://github.com/brianamarie/another-repository.git` OR `. add-remote.sh`
3. Before you try to merge, make sure you have all of the remote tracking branches for all remotes: `git fetch --all`
4. Try to merge the two repositories: `git merge other-repo/master` and notice the error message.
5. Since these two repositories have unrelated histories, we need to specify a particular type of merge: `git merge other-repo/master --allow-unrelated-histories`
6. You can see the combined history with the alias `git lol`
7. Reset the exercise: `. reset.sh` and `cd ..`
