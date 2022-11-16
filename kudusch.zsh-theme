# kudusch.zsh-theme

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}
# disable the other virtual_env promp info
export VIRTUAL_ENV_DISABLE_PROMPT=1

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '⠠⠵' && return
    echo '○'
}

function box_name {
  local box="${SHORT_HOST:-$HOST}"
  [[ -f ~/.box-name ]] && box="$(< ~/.box-name)"
  echo "${box:gs/%/%%}"
}

PROMPT="╭─%{$FG[040]%}%n%{$reset_color%} at %{$FG[033]%}$(box_name)%{$reset_color%} in %{$terminfo[bold]$FG[040]%}%~%{$reset_color%}\$(git_prompt_info) %D - %*
╰─\$(virtualenv_info)\$(prompt_char) "

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$FG[239]%}on%{$reset_color%} %{$fg[255]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[202]%}✘✘✘"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[040]%}✔"
