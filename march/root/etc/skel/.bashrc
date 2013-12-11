#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PROMPT_COMMAND=__prompt_command

__prompt_command_git() {
	type git &>/dev/null || return
	git rev-parse --is-inside-work-tree &>/dev/null || return
	echo -n ' '
	git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'
	git diff --quiet --ignore-submodules HEAD &>/dev/null || echo -n '*'
}

__prompt_command() {
	local ret="$?"
	local color
	PS1="\w$(__prompt_command_git)"
	if (( $ret == 0 )); then
		color=4
	else
		color=1
	fi
	PS1+="\[$(tput setaf $color)\]❯ \[$(tput sgr0)\]"
}
