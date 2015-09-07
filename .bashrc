# .bashrc

# ? Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Clean command prompt (path is at the top)
export PS1="> "

# Aliases
# Navigation
alias ls='ls -a --color'
alias l=ls
alias ..='cd ..'
alias ...='cd ...'
alias ....='cd ....'

# Git
alias gs='git s'
alias ga='git a'
alias gc='git c'
alias gp='git p'
alias gb='git b'
alias gcl='git cl'
alias gco='git co'

# ?
local256="$COLORTERM$XTERM_VERSION$ROXTERM_ID$KONSOLE_DBUS_SESSION"
if [ -n "$local256" ] || [ -n "$SEND_256_COLORS_TO_REMOTE" ]; then

    case "$TERM" in
        'xterm') TERM=xterm-256color;;
        'screen') TERM=screen-256color;;
        'Eterm') TERM=Eterm-256color;;
    esac
    export TERM

    if [ -n "$TERMCAP" ] && [ "$TERM" = "screen-256color" ]; then
        TERMCAP=$(echo "$TERMCAP" | sed -e 's/Co#8/Co#256/g')
        export TERMCAP
    fi
fi

