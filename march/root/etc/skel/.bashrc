#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias grep='grep --color'
alias ls='ls --group-directories-first --color'
alias j='jobs'
alias lla='ls -la'
alias md5='md5sum'
alias sudo='sudo -E'
alias v='vim'
alias http='python -m http.server 8080'
alias dsz='find $(pwd -P) -maxdepth 1 -type d -exec du -sh {} + 2>/dev/null | sort -h'

# golang
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

# history
export HISTIGNORE="&:ls:[bf]g:exit:reset:clear:cd *"
export HISTCONTROL="ignoreboth:erasedups"
export HISTSIZE=1000
export HISTFILESIZE=2000

# prompt
PROMPT_COMMAND=__prompt_command

__prompt_term_title() {
	echo -en "\033]2;${PWD##*/}\007"
}

__prompt_command_git() {
	type git &>/dev/null || return
	git rev-parse --is-inside-work-tree &>/dev/null || return
	echo -n ' '
	git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'
	git diff --quiet --ignore-submodules HEAD &>/dev/null || echo -n '*'
}

__prompt_command() {
	local ret="$?"
	PS1="\w$(__prompt_command_git)"
	if (( $ret == 0 )); then
		PS1+='\[\033[0;34m\]'
	else
		PS1+='\[\033[0;31m\]'
	fi
	PS1+='❯ \[\033[0m\]'
	__prompt_term_title
}
