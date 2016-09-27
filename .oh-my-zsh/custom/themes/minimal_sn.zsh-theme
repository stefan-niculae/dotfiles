# TODO make regex by sed faster
# TODO colors for ls output
# TODO virtualenv name to another chevron

# Theme by Stefan Niculae

CHEVRON="❯"

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

  ret+="$CHEVRON$RSC"
  echo "$ret"
}

function zle-line-init zle-line-finish zle-keymap-select {
  zle reset-prompt
  zle -R
}

zle -N zle-line-init
zle -N zle-keymap-select
zle -N zle-line-finish

#PROMPT='$(prompt_vimode) '
PROMPT="$GREEN_BOLD$CHEVRON$RSC "


# Right prompt
function current_path() {
  local slash="$RSC/$GRAY_COLOR"
  local ellipsis="${RSC}\.\.${GRAY_COLOR}"

  echo "$GRAY_COLOR$(print -P %4~ | sed s:'\([^/]\{8\}\)[^/]\{2,\}\([^/]\{8\}\)':\\1${ellipsis}\\2:g | sed s:/:${slash}:g)$RSC"
}

# Git info
ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="✹" #✭
ZSH_THEME_GIT_PROMPT_CLEAN=""

function git_status() {
  echo "$BLUE_COLOR$(git_prompt_info)$RSC"
}

RPROMPT='$(current_path) $(git_status)'
