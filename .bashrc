#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

#aliases
alias ls='ls -la --color=auto'
alias emacs="emacsclient -c -a 'emacs'"
alias dot="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

#exports
export PATH="$HOME/.emacs.d/bin:$PATH"
