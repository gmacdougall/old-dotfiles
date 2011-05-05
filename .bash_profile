# .bash_profile

if [ "$TERM" = "xterm" ] ; then
    export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}\007"'
else
    unset PROMPT_COMMAND
fi

export TERM='xterm-256color'

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH
