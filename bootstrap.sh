#! /usr/bin/env bash

### Constants
GREEN='\033[0;32m'
RED='\033[0;31m'
BLUE='\033[0;36m'
YELLOW='\033[1;33m'
NC='\033[0m'

### Configs
IGNORED_FILES="bootstrap.sh .git README.md"  # TODO add configs, etc
BACKUP_DIR=~/dotfiles_backup
APPS="iterm2"  # TODO other apps http://sourabhbajaj.com/mac-setup/Homebrew/Cask.html

log() {
    color=''
    case $1 in
        info)  color=$BLUE;;
        error) color=$RED;;
        succ)  color=$GREEN;;
        *)     color=$NC;;
    esac
    echo "${color}$2${NC}"
}


is_ignored() {
    for file in $IGNORED_FILES; do
        if [[ $1 == $file ]]; then
            return 0  # is ignored
        fi
    done
    return 1  # is not ignored
}

backup_dir_created=false
create_backup_dir() {
    if $backup_dir_created; then
        return
    fi
    backup_dir_created=true

    # If the backup directory already exists
    if [ -e $BACKUP_DIR ]; then
        log error "'$BACKUP_DIR' already exists, aborting."
        exit
    fi

    log succ "Creating backup directory: '$BACKUP_DIR'"
    mkdir $BACKUP_DIR
}


symlink_dotfiles() {
    log info "Symlinking dotfiles"
    source_dir=$(dirname $0)  # folder of script

    # Iterate over files and directory in the source dir
    for entry in $source_dir/*; do
        name=$(basename $entry)
        if is_ignored $name; then
            continue
        fi

        # If the file already exists at the destination
        if [ -e ~/$name ]; then
            log info "Backing up $name in $BACKUP_DIR"
            create_backup_dir
            mv ~/$name "$BACKUP_DIR/$name"
        fi

        log succ "Symlinking $name in home"
        ln -s $entry ~/$name
    done
}


install_xcode() {
    # Required for later things
    log info "Installing Xcode Command Line Tools"
    # TODO test this on clean
    xcode-select --install
}

install_homebrew() {
    # TODO add export PATH="/usr/local/bin:$PATH" in .profile
    # TODO make job that asks to update homebrew (and other package managers) every week
    log info "Installing the Homebrew package manager"
    # TODO test this on clean
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew doctor
}

install_casks() {
    log info "Installing GUI applications as casks"
    # GUI applications
    for app in $APPS; do
        brew cask install $app
    done
}

#install_xcode
#install_homebrew
#symlink_dotfiles
install_casks
# TODO continue from http://sourabhbajaj.com/mac-setup/iTerm/README.html
# TODO install neovim from homebrew https://github.com/neovim/homebrew-neovim/blob/master/README.md and install its rc's

