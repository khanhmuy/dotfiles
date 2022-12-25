PROMPT=$'%{$fg_bold[cyan]%}%n の %m %{$FG[004]%}%D{[%X]} %{$reset_color%}%{$FG[009]%}[%~]%{$reset_color%} $(git_prompt_info)\
%{$FG[013]%}パステル %{$fg_bold[blue]%}%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}*%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
