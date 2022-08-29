# Koggdal Zsh Theme

typeset +H _current_dir="%{$FG[242]%}%3~%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[235]%}⎇ "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$FG[196]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$FG[034]%}✔%{$reset_color%}"

PROMPT='
${_current_dir} $(git_prompt_info)
%{$FG[242]%}▶ %{$reset_color%}'

