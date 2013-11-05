#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
export PROMPT_COMMAND=__prompt_command

__prompt_command_git() {
	git rev-parse --is-inside-work-tree &>/dev/null || return
    git diff --quiet --ignore-submodules HEAD &>/dev/null
    (( $? == 1 )) && echo -n ' *'
}

__prompt_command() {
	local ret="$?"
	PS1="\w$(__prompt_command_git)"
    if (( $ret == 0 )); then
		PS1+="❯ "
	else
		PS1+="✕ "
	fi
}

. /usr/lib/z.sh
