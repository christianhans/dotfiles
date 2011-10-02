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

function hg_prompt_info {
    $OH_MY_ZSH_HG prompt --angle-brackets "\
< on %{$fg[magenta]%}<branch>%{$reset_color%}>\
< at %{$fg[yellow]%}<tags|%{$reset_color%}, %{$fg[yellow]%}>%{$reset_color%}>\
%{$fg[green]%}<status|modified|unknown><update>%{$reset_color%}<
patches: <patches|join( → )|pre_applied(%{$fg[yellow]%})|post_applied(%{$reset_color%})|pre_unapplied(%{$fg_bold[black]%})|post_unapplied(%{$reset_color%})>>" 2>/dev/null
}

PROMPT='%{$fg[green]%}%B%n%b%{$reset_color%}@%{$fg[green]%}$(box_name)%{$reset_color%} %{$fg_bold[blue]%}${PWD/#$HOME/~}%{$reset_color%}$(hg_prompt_info)$(git_prompt_info)$(virtualenv_info) '

local return_status="%{$fg[red]%}%(?..⏎)%{$reset_color%}"
RPROMPT='${return_status}%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[red]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""
