# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

LANG=pt_BR.utf8
LC_ALL=pt_BR.utf8
#LANG=en_US
TERM=xterm-256color
PS1="\[\e[0;1m\][\[\e[33;1m\]\u\[\e[0;1m\]@\h:\[\e[32;1m\]\w\[\e[0;1m\]]$\[\e[0m\] "
TMOUT=0
EDITOR=vim

# Exports
export LANG LC_ALL TERM PS1 LS_COLORS TMOUT EDITOR
export PATH=~/.usr/scripts/:$PATH

# Alias
alias grep='grep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
