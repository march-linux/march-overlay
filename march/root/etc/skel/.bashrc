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

# history
export HISTIGNORE="&:ls:[bf]g:exit:reset:clear:cd *"
export HISTCONTROL="ignoreboth:erasedups"
export HISTSIZE=1000
export HISTFILESIZE=2000

# git prompt
[[ -f /usr/share/git/git-prompt.sh ]] && source /usr/share/git/git-prompt.sh

# prompt
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'
trap 'echo -ne "\033]2;${PWD##*/}\007"' DEBUG
