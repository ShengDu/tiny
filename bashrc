#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f $(brew --prefix)/etc/bash_completion ]
then
    . $(brew --prefix)/etc/bash_completion
fi

#PS1='[\u@\h \W]\$ '  # To leave the default one
PS1='\[\e[0;31m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[0;31m\]\$ \[\e[m\]\[\e[0;32m\] '

export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxegedabagaced
#export PATH=$PATH:/usr/local/opt/go/libexec/bin

alias pip='sudo -H pip' 
