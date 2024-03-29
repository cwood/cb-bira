# ZSH Theme - Preview: http://gyazo.com/8becc8a7ed5ab54a0262a470555c3eed.png
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[magenta]%} %~%{$reset_color%}'
local rvm_ruby=''
if which rvm-prompt &> /dev/null; then
  rvm_ruby='%{$fg[red]%}‹$(rvm-prompt i v g)›%{$reset_color%}'
else
  if which rbenv &> /dev/null; then
    rvm_ruby='%{$fg[red]%}‹$(rbenv version | sed -e "s/ (set.*$//")›%{$reset_color%}'
  fi
fi
local git_branch='$(git_prompt_info)%{$reset_color%}'
local hg_branch='$(hg_prompt_info)%{$reset_color%}'

PROMPT="╭─${user_host} ${current_dir} ★ ${git_branch}${hg_branch}
╰─%B%{$fg[blue]%}♥%b "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg[yellow]%}›"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}✔"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}★"

ZSH_THEME_HG_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_HG_PROMPT_SUFFIX="%{$reset_color%}%{$fg[yellow]%}›"
ZSH_THEME_HG_PROMPT_CLEAN="%{$fg[green]%}✔"
ZSH_THEME_HG_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_HG_PROMPT_DIRTY="%{$fg[red]%}★"
