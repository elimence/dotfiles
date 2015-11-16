#!/bin/bash
# update dotfiles

current_directory="$PWD"

# git pull and install dotfiles as well
cd $HOME
if [ ! -d ./dotfiles/ ]; then
    git clone https://github.com/elimence/dotfiles.git
    ln -sb dotfiles/.screenrc .
    ln -sb dotfiles/.bash_profile .
    ln -sb dotfiles/.bashrc .
    ln -sb dotfiles/.bashrc_custom .
    ln -sb dotfiles/.bash_aliases .
    ln -sb dotfiles/.bash_functions .
fi


# Check and update dotfiles if need be
cd ~/dotfiles
git fetch origin
reslog=$(git log HEAD..origin/master --oneline)

if [ "${reslog}" != "" ] ; then
    git merge origin/master # completing the pull
    echo "successfully updated dotfiles!"
else
    echo "dotfiles is already up to date"
fi


# setup terminal to be git-aware
cd $HOME
if [ ! -d ./.bash/ ]; then
    mkdir .bash
	cd .bash
	git clone https://github.com/jimeh/git-aware-prompt.git
fi


# Check and update git-aware-prompt if need be
cd ~/.bash/git-aware-prompt;
git fetch origin
reslog=$(git log HEAD..origin/master --oneline)

if [ "${reslog}" != "" ] ; then
    git merge origin/master # completing the pull
    echo "successfully updated git-aware-prompt"
else
    echo "git-aware-prompt is already up to date"
fi


bash --login
cd "$current_directory"
