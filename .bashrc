#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh

export PATH="$PATH:$(go env GOBIN):$(go env GOPATH)/bin"

source ~/.bash_aliases

export CGO_ENABLED=1

export MANPAGER='nvim +Man!'

export PS1="[\u@\h \w]\n$ "

# Yazi helper funktio. Starttaa yazi kirjoittamalla vain y, ja kun exitataan
# yazista on terminaali samassa kansiossa
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}
