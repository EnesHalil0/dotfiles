export ZSH="$HOME/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh

plugins=(git)

HISTSIZE=10000
SAVEHIST=10000

alias vim='nvim'
alias vi='nvim'
alias v='nvim'
alias open='xdg-open'

# aliases
alias \
	cp="cp -iv" \
	mv="mv -iv" \
	rm="rm -vI" \
	bc="bc -ql" \
	rsync="rsync -vrPlu" \
	mkdir="mkdir -pv" \
  cat="bat" 

# Neovim Alias
alias \
	vim="nvim" \
	vi="nvim" \
	v="nvim"

# Colorize commands when possible.
alias \
	ls="ls -hN --color=auto --group-directories-first" \
  l="ls -al"
	grep="grep --color=auto" \
	diff="diff --color=auto" \
	ccat="highlight --out-format=ansi" \
	ip="ip -color=auto"

# These common commands are just too long! Abbreviate them.
alias \
	ka="killall" \
	g="git" \
	scs="systemctl suspend" \
	sdn="shutdown -h now" \
	e="$EDITOR" \
	v="$EDITOR" \
	p="pacman" \
	y="yay" \
  lg="lazygit" \
	z="zathura" \

# Yazi shell wrapper
function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

source <(fzf --zsh)
eval "$(starship init zsh)"
