### How do I remove a submodule?

> I had needed a submodule in the past, but it's no longer necessary. How do I remove it completely from this repository?

Submodules are sticky business, and if you want out, it takes a few steps.

1. Make sure you're in the root directory of this repository.
2. Add a submodule with the script: `. 08-remove-submodule/setup.sh`
3. Notice there is a submodule with: `cat .gitmodules`
4. Remove the contents of the directory and "de-initialize" the submodule: `git submodule deinit example-submodule`
5. Remove the path that Git uses to keep track of the submodule: `git rm <path_to_submodule>`
6. Commit those changes: `git commit -m "removed submodule"`
6. Remove the reference in the `.git` directory: `rm -rf .git/modules/<path_to_submoule>`
7. Remove the `.gitmodules` directory from the root directory of the repository: `rm -rf .gitmodules`
8. Reset the repository: `. 08-remove-submodule/reset.sh`
