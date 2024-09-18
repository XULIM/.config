if status is-interactive
	alias ll="eza -la --header --icons=always --color=always"
	source ~/.venv/bin/activate.fish
    alias c="wl-copy"
    alias v="wl-paste"
    set XDG_CONFIG_HOME "~/.config"
    alias vi="nvim"
    alias vimdiff="nvim -d"
    alias g="git"
end
