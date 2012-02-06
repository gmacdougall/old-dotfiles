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

[[ -s ~/.rvm/scripts/rvm ]] && source ~/.rvm/scripts/rvm # Load RVM into a shell session *as a function*
[ -f ~/.bundler-exec.sh ] && source ~/.bundler-exec.sh

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
