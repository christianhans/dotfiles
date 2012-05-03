# e-mux's zsh theme - a elegant theme without nonsense
# 
# Looks best with the IR_Black Terminal theme (http://blog.toddwerth.com/entries/13)
#
# Tested on Mac OS X Lion, but with a few modifications it should
# also work on other operating systems.

function box_name {
	# use this line for other operating systems than OSX
	#[ -f ~/.box-name ] && cat ~/.box-name || hostname -s
	scutil --get ComputerName
}

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

PROMPT='%{$fg[$NCOLOR]%}%B%n%b%{$reset_color%}@%{$fg[green]%}$(box_name)%{$reset_color%} %{$fg_bold[blue]%}${PWD/#$HOME/~}%{$reset_color%}$(git_prompt_info)$(virtualenv_info) '

PROMPT2='%{$fg[red]%}\ %{$reset_color%}'

RPS1='${return_code}'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[red]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""
