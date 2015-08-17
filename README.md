# .vim
my own vim repo

# setup vim on new machine
ln -sf `pwd`/.vimrc $HOME/

# add new packages from github
git submodule add "pacakge git remote repo" bundle/"name"

# update all package in the root repo
git submodule foreach 'git checkout master; git pull'

# rm package
rm -rf bundle/"name"
git rm -r bundle/"name"
