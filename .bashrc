#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -l --color=auto'
alias rm='rm -i'

#PS1='[\u@\h \W]\$ '
PS1='\[\e[31m\][\[\e[33m\]\u\[\e[32m\]@\[\e[34m\]\h \[\e[35m\]\W\[\e[31m\]]\[\e[00m\]\$ '
