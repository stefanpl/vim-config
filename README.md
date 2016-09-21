to get submodules:
git submodule update --init --recursive

to add submodule (mostly for plugins in /bundle):
git submodule add [repo]

to fix submodules being in a detached HEAD state:
`tail -n 1 README.md` ...
git submodule foreach -q --recursive 'branch="$(git config -f $toplevel/.gitmodules submodule.$name.branch)"; git checkout $branch'
