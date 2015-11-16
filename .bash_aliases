#!/bin/bash

# Listing, directories, and motion
alias ll="ls -alrtF --color"
alias la="ls -A"
alias l="ls -CF"
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias m='less'
alias ..='cd ..'
alias ...='cd ..;cd ..'
alias md='mkdir'
alias cl='clear'
alias du='du -ch --max-depth=1'
alias treeacl='tree -A -C -L 2'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'



### *************** HELP ALIASES ***************

alias edx-update_script="sh ~/edx-dotfiles/update.sh"