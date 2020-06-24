

if [ -d "$HOME/bin" ] ; then
	export PATH="$HOME/bin:$PATH"
	if [ -f "$HOME/bin/tmux-completion/tmux" ] ; then
		source  ~/bin/tmux-completion/tmux
	fi
fi

export PATH=$PATH:/home/charlotte/.local/bin:$HOME/go/bin

if which ruby >/dev/null && which gem >/dev/null; then
	PATH="$(ruby -r rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi
