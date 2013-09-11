#
# ~/.bashrc
#

# If not running interactively, don't do anything
#[ -z "$PS1" ] && return # some from older system
[[ $- != *i* ]] && return

# disable energy star features if running locally
[[ ! -n "$SSH_CLIENT" && "$TERM" != "linux" ]] && xset -dpms

# some aliases
alias ls='ls --color=auto'
alias l='ls -hl'
alias ll='ls -hal'
alias grep='grep -n --color=auto'
alias rgrep='grep -r'
# use screen-256color for remote connections which works for all programs
# rxvt-unicode-256color sadly does not (even with the correct terminfo).
alias ssh='TERM=screen-256color ssh'
[ -x /usr/bin/colordiff ] && alias diff='colordiff'

# improve color output of ls
eval $(dircolors -b)
color_prompt=yes

# bash history
# don't put duplicate lines or lines starting with space in the history.
export HISTCONTROL=ignoreboth
export HISTIGNORE='history*'
# append to the history file, don't overwrite it
shopt -s histappend

[ -d $HOME/bin ] && PATH=$PATH:$HOME/bin

# ssh keychain
#eval $(keychain --eval --ignore-missing --agents ssh -Q --quiet id_ecdsa)

# archlinux pkgfile "command not found hook"
pkghook='/usr/share/doc/pkgfile/command-not-found.bash'
[ -f $pkghook ] && source $pkghook

# Prompt
#PS1='[\u@\h \W]\$ '
PS1='\[\e[1;92m\]\u\[\e[m\]@\[\e[1;95m\]\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] '
PROMPT_COMMAND='[[ "$TERM" != "linux" ]] && echo -ne "\033]0;${USER}@${HOSTNAME}:${PWD}\007"'

EDITOR=/usr/bin/vim
export EDITOR
