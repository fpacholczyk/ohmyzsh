eval dirty_orange='$FG[202]'
eval light_violet='$FG[176]'
eval light_yellow='$FG[222]'

# Add timestamp at the beginning
# https://stackoverflow.com/questions/40076573/adding-timestamp-to-each-line-on-zsh
PROMPT="%{$fg[yellow]%}[%D{%H:%M:%S}]"

# PATH
# %c -- current directory
# %~ -- path from ~
PROMPT+=' %{$fg_bold[cyan]%}%~%{$reset_color%}'
# git
PROMPT+=' $(git_prompt_info)'
# arrow and return code
PROMPT+="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$light_violet%}git:(%{$light_yellow%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$light_violet%}) %{$dirty_orange%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$light_violet%})"

export LSCOLORS="Exgxcxdxfaegedabagacad"
export LS_COLORS="di=1;34:ln=36:so=32:pi=33:ex=35;40:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
