# Minimal theme for zshell
# Stefan Niculae

PROMPT_CHAR="❯"

# Colors
eval GRAY_COLOR='$FG[240]'
eval BLUE_COLOR='$FG[075]'
GREEN_BOLD="%{$fg_bold[green]%}"
WHITE_BOLD="%{$fg_bold[white]%}"
RSC="%{$reset_color%}"


# Left prompt

# Chevron indicating vi insert/command mode
function prompt_vimode(){
  local ret=""

  case $KEYMAP in
    main|viins)
      ret+="$GREEN_BOLD"
      ;;
    vicmd)
      ret+="$WHITE_BOLD"
      ;;
  esac

  ret+="$PROMPT_CHAR$RSC"
  echo "$ret"
}

function zle-line-init zle-line-finish zle-keymap-select {
  zle reset-prompt
  zle -R
}

zle -N zle-line-init
zle -N zle-keymap-select
zle -N zle-line-finish

PROMPT='$(prompt_vimode) '


# Right prompt
function prompt_path() {
  local slash="$RSC/$GRAY_COLOR"
  local ellipsis="${RSC}..${GRAY_COLOR}"

  echo "$GRAY_COLOR$(print -P %3~ | sed s:'\([^/]\{4\}\)[^/]\{3,\}\([^/]\{4\}\)':\\1${RSC}\.\.${GRAY_COLOR}\\2:g | sed s:/:${slash}:g)$RSC"
}

# Git info
ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="✹" #✭
ZSH_THEME_GIT_PROMPT_CLEAN=" "

function prompt_git() {
  echo "$BLUE_COLOR$(git_prompt_info)$RSC"
}

RPROMPT='$(prompt_path) $(prompt_git)'
