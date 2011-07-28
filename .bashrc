# .bashrc

# Custom aliases
alias ls="ls --color"

# Exports
export EDITOR="vim"
export PAGER="less"

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source additional files
source ~/.bashrc.git
if [ -f ~/.bashrc.local ]; then
	. ~/.bashrc.local
fi
