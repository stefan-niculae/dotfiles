# dotfiles

This repo contains my personal system configuration. I keep it synced with every machine I work on and It's the first thing I do when working on a new one (or at least that's the goal).

The setup is tailored for a macOS system (tested on `10.11` and `10.12`). The goal is to also have it work on other Unix systems.



## Installation

1. Clone this repo to a convenient location (the examples use `~/dotfiles`):

```bash
cd ~
git clone https://github.com/stefan1niculae/dotfiles.git  # HTTPS
git clone git@github.com:stefan1niculae/dotfiles.git # or SSH version (if you configured it already)
# or just download the zip from github.com/stefan1niculae/dotfiles
```

2. Run the bootstrapping script in the root:

```bash
cd ~/dotfiles
./bootstrap.sh
```

The script will do the following:

- Symlink dotfiles — editing `~/.aliases` will also reflect in this repo
- Install Command Line Tools for Xcode — required by _Homebrew_ and other applications (TODO: check if you need to install Xcode from the AppStore)



## Screenshots

### Terminal

TODO: ss with terminal in use

### Vim

TODO: ss with vim in use



## Contents

Configs for:

* zsh — better shell

* vim — power-user text editor

* git — source control

* TODO: other programs

  ​



GUI applications:

* iTerm

* TODO: other apps

  ​



The setup reflects my usual toolchain:

* Python for scientific computation and web servers

* CoffeeScript 

* Sass

* TODO: other languages

  ​

## TODO

As you can tell, the project is WIP — the scripts and readme are riddled with TODOs.

### Bootstrapping

* generate public ssh key (if it doesn't exist) and instruct to enter it https://github.com/settings/keys [New SSH key]
* `US+RO.keylayout` to `~/Library/Keyboard Layouts` (for macOS) and instruct to activate




### Informing

* useful applications (for macOS):
  * BetterTouchTool — trackpad gestures and keyboard shortcuts
  * BetterSnapTool — window snapping
  * Bartender — status bar icons hider
  * The Unarchiver — archive extractor
  * Lightshot — screenshots
  * TODO: other apps
* keyboard shortcuts (via BTT):
  - `⇧⌥ key` app launching shortcuts
  - global trackpad gestures
  - browser trackpad gestures
* keyboard keys:
  * `⌥ key` diacritics, `⇧⌥ key` uppercase diacritics
  * `⌥ key` useful symbols




### Black mess

neobundle: curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh; sh ./install.sh; ... rm -f install.sh . after this, remove .vim/bundle from rep
install font and instruct to change it
install zsh and change shell to it and put custom theme in
install iterm2 and add preferences also change its icon to the default terminal one
add .hushlogin
tell user to update git (through brew) - because apple git makes reset-terminal super slow and thus the readline is unusable
install macvim
install cabal, ghcmod, add it to path https://github.com/scrooloose/syntastic/issues/285
install mcs http://www.mono-project.com/docs/about-mono/supported-platforms/osx/
npm install -g csslint
npm install -g jshint
npm install -g jsonlint
gem install mdl
gem install sqlint
pip install vint
npm install -g coffeescript
install syntastic checkers
gulp, gulp-sass, gulp-coffee

TO ADD:
task to check for updates every month
```
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

# Even better: use the silver searcher (brew install the_silver_searcher)
alias f="ag -g"
alias r=ag
```
global gitignore
.aliases
minimal_sn.zsh-theme
scripts:
http://hints.macworld.com/article.php?story=20100509134904820
https://blog.bertvanlangen.com/articles/toggle-hidden-files-finder-os-x-10-10-yosemite/
better touch tool configurations!
iterm2 themes
.ghc/
workon <env> instead of sourcing
make global gitignore work... globally
osx tweaks:
    this one no longer works
    defaults write com.apple.finder QLEnableTextSelection -bool TRUE; killall Finder



(interesting) ZSH PLUGINS:
--from the github wiki--
brew
cabal?
chucknorris
coffee?
common-aliases
dirhistory/dircycle
fasd
git
gitfast?
git-extras
npm
osx
pep8?
pip
pylint?
python?
tmux
tmuxinator?
vi-mode
virtualenvwrapper
wd
github.com/zsh-users/zsh-syntax-highlighting

https://github.com/unixorn/awesome-zsh-plugins
prezto
antigen-hs/zgen
alf
fresh?


Karabiner-Elements
When released/documentation available/GUI done:
  shift-escape is caps_lock
  for mech keyboard
    eject is expose
  keyrepeat: delay & rate

bootstrap todo: git config --global core.excludesfile ~/.gitignore
