platform='unknown'
unamestr=$(uname)
if [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
elif [[ "$unamestr" == 'Darwin' ]]; then
   platform='mac'
fi

# Clean command prompt (path is at the top)
export PS1="> "

# Aliases
# Navigation
if [[ $platform == 'linux' ]]; then
   alias ls='ls -a --color=auto'
elif [[ $platform == 'mac' ]]; then
   alias ls='ls -a -G'
fi
alias l=ls
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias p='pwd'
alias tree='tree -aC'

# Search
alias grep='grep --line-number --recursive --color=auto'
# if [[ $platform == 'freebsd' ]]; then
# TODO make grep with no arguments search in curr dir by default on mac
#     function grep() {
#         if [ $# -eq 0 ]; then
#             echo "No arguments supplied"
#         fi
#
#         grep "${@:2}"
#     }
# fi

# Git
alias gs='git s'
alias ga='git a'
alias gc='git c'
alias gca='git ac'
alias gp='git p'
alias gb='git b'
alias gcl='git cl'
alias gco='git co'
alias gd='git d'
function gacp() {
    ga
    gc "$1"
    gp
}
function gac() {
    ga
    gc "$1"
}

# Misc
if [[ $platform == 'linux' ]]; then
   alias cal='cal --monday --color=auto' # calendar starts on monday
   echo linux lol
elif [[ $platform == 'mac' ]]; then
   alias cal='ncal'
fi
