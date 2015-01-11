#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# shopt
shopt -s autocd cdspell dirspell no_empty_cmd_completion

# alias
alias grep='grep --color'
alias ls='ls --group-directories-first --color'
alias j='jobs'
alias lla='ls -lA'
alias sudo='sudo -E'
alias v='vim'
alias http='python -m http.server 8080'
alias dsz='find $(pwd -P) -maxdepth 1 -type d -exec du -sh {} + 2>/dev/null | sort -h'

# path
export GOPATH="$HOME"
export PATH="$PATH:$HOME/bin"

# history
export HISTIGNORE="&:ls:[bf]g:exit:reset:clear:cd *"
export HISTCONTROL="ignoreboth:erasedups"
export HISTSIZE=1000
export HISTFILESIZE=2000

# git prompt
[[ -f /usr/share/git/git-prompt.sh ]] && source /usr/share/git/git-prompt.sh

# prompt
PROMPT_COMMAND=__prompt_command

__prompt_term_title() {
	echo -en "\033]2;$PWD\007"
}

__prompt_command() {
	local ret="$?"
	PS1="\w$(__git_ps1 " %s")"
	if (( $ret == 0 )); then
		PS1+='\[\033[0;34m\]'
	else
		PS1+='\[\033[0;31m\]'
	fi
	PS1+=') \[\033[0m\]'
	__prompt_term_title
}
