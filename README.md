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





GUI applications:

* iTerm

* TODO: other apps





The setup reflects my usual toolchain:

* Back-end: Python

* Front-end: Node, CoffeeScript, Sass, React?

* Design: Photoshop, Experience Design?

* Productivity: Pages, Numbers, Keynote, 

* Editing: Texpad, Typora, Atom

* Game Dev: Unity, Visual Studio Code

* TODO: other areas



## TODO

As you can tell, the project is WIP — the scripts and readme are riddled with TODOs.

### Bootstrapping

* Git:
  * generate public ssh key (if it doesn't exist) and instruct to enter it https://github.com/settings/keys [New SSH key]
  * set global gitignore: `git config --global core.excludesfile ~/.gitignore`
* `US+RO.keylayout` to `~/Library/Keyboard Layouts` (for macOS) and instruct to activate
* Vim
  * install plugins
  * install MacVim
  * make the `vim` and `vi` commands use MacVim's binary
  * install linters (ask before installing?): python, coffee, c#, css, html, md, json, sql, TODO: more linter languages
* install fonts
* change shell to zsh
* copy _only_ custom theme for zsh (do not overwrite the whole `.oh-my-zsh` folder)
* iTerm2 preferences and themes
* update git through brew (Apple git makes reset-terminal super slow, rendering the read-line unusable)
* programming languages (ask before installing?):
  * Haskell: cabal, stack, ghc-mod and add them to `$PATH`
  * JavaScript: node, npm, coffee
* Scripts listed in right-click menu:
  * create new file (something like [this](http://hints.macworld.com/article.php?story=20100509134904820)?)
  * toggle hidden files (something like [this](https://blog.bertvanlangen.com/articles/toggle-hidden-files-finder-os-x-10-10-yosemite/)?)
* BTT configs
* Karabiner-Elements




### Inform about

* Useful applications (for macOS):

  * BetterTouchTool — trackpad gestures and keyboard shortcuts
  * BetterSnapTool — window snapping
  * Bartender — status bar icons hider
  * The Unarchiver — archive extractor
  * Lightshot — screenshots
  * TODO: other apps

* Keyboard shortcuts (via BTT):

  - `⇧⌥ key` app launching shortcuts
  - global trackpad gestures
  - browser trackpad gestures

* Keyboard keys:
  * `⌥ key` diacritics, `⇧⌥ key` uppercase diacritics
  * `⌥ key` useful symbols

* Keyboard configuration:

  * for external keyboard (mechanical / Apple)
  * `Caps` is `Esc`; `⇧Caps` is regular `Caps`
  * `⏏` is `Expose`; `F13` is `Launchpad`
  * TODO:   keyrepeat - delay & rate

* Text replacements (synced from iCloud account):

  * `;key` emoji shortcuts
  * `@@` and `@key` for email addresses
  * `##` for phone number

* Vim:

  * key-bindings
  * plugins
  * cheat-sheet (TODO: separate repo)

* Fonts:

  * _Hack_ for monospaced
  * _Open Sans_ for sans-serif
  * _Palatino_ for serif
  * TODO: more/other font choices?

* Aliases:

  * navigaton — `l`, `ll`
  * git — `gcl`, `gs`, `gacp <message>`, etc
  * general — `thf`, `et`, etc
  * coming from zsh — `...`, etc




### Updater

Task to check for updates every month. Something like this?
```bash
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

# Even better: use the silver searcher (brew install the_silver_searcher)
alias f="ag -g"
alias r=ag
```


### Zsh

Interesting plugins to try (from the github wiki):

* brew
* cabal?
* chucknorris
* coffee?
* common-aliases
* dirhistory/dircycle
* fasd
* git
* gitfast?
* git-extras
* npm
* osx
* pep8?
* pip
* pylint?
* python?
* tmux
* tmuxinator?
* vi-mode
* virtualenvwrapper
* wd
* github.com/zsh-users/zsh-syntax-highlighting
* https://github.com/unixorn/awesome-zsh-plugins
* prezto
* antigen-hs/zgen
* alf
* fresh?
* !something to auto-activate env when cd-ing into project folder