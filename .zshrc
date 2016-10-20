# TODO make zsh autocomplete .dotfiles too when tab-ing after vi for example
# Path to your oh-my-zsh installation.
export ZSH=/Users/Stefan/.oh-my-zsh

[[ "$TERM" == "xterm" ]] && export TERM=xterm-256color
# Custom minimal theme
ZSH_THEME="minimal_sn"
# ZSH_THEME="minimal"

setopt prompt_subst

# _ and - are interchangeable.
# hyphen_insensitive="true"

# disable auto-setting terminal title.
disable_auto_title="true"

# command auto-correction.
enable_correction="true"

# display red dots whilst waiting for completion.
completion_waiting_dots="true"

# optional formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# hist_stamps="mm/dd/yyyy"

# would you like to use another custom folder than $zsh/custom?
# TODO put my theme into my dotfiles repo and reference it from here
# zsh_custom=/path/to/new-custom-folder

# plugins can be found in ~/.oh-my-zsh/plugins/*
plugins=(git)

# user configuration

# export path="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export manpath="/usr/local/man:$manpath"
zsh=~/.oh-my-zsh
source $zsh/oh-my-zsh.sh

# you may need to manually set your language environment
# export lang=en_us.utf-8

# preferred editor for local and remote sessions
if [[ -n $ssh_connection ]]; then
  export editor='vim'
else
  export editor='vim'
fi

# compilation flags
# export archflags="-arch x86_64"

# ssh
# export ssh_key_path="~/.ssh/dsa_id"

# use vi as readline editor
#bindkey -v
# set delay to 10ms between changing vim modes
# FIXME it seems like it is not updating at all on time
export KEYTIMEOUT=10

# Activate auto-completion
# doesn't work...
fpath=(/usr/local/share/zsh-completions $fpath)

# Activate plugins
# TODO make a relative path instead
# source ~/.zshrc/plugins.zsc
# TODO move this to their folder
# source ~/.zsh/antigen/antigen.zsh
#
# # Load the oh-my-zsh's library.
# antigen use oh-my-zsh
#
# # Bundles from the default repo (robbyrussell's oh-my-zsh).
# antigen bundle git
# antigen bundle heroku
# antigen bundle pip
# antigen bundle lein
# antigen bundle command-not-found
#
# # Syntax highlighting bundle.
# antigen bundle zsh-users/zsh-syntax-highlighting
#
# # Load the theme.
# antigen theme $HOME/.oh-my-zsh/custom/themes/minimal_sn
#
# # Tell antigen that you're done.
# antigen apply

# load aliases
source ~/.aliases
alias -s conf='$editor'
#source ~/.zsh/fixes.zsh
