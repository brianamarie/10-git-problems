### How do I remove a submodule?

1. Add a submodule with the script: `. setup.sh`
2. Notice there is a submodule with: `cat .gitmodules`
3. "deinit" the submodule: `git submodule deinit example-submodule`
4. `git rm <path_to_submodule>`
5. `git commit -m "removed submodule"`
6. `rm -rf .git/modules/<path_to_submoule>`
7. Remove the `.gitmodules` directory from the root directory of the repository:
  - `cd ..`
  - `rm -rf .gitmodules`
  - cd back into the repository: `cd 08-remove-submodule`
8. Reset the repository: `. reset.sh`
