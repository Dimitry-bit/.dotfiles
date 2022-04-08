# +-----+
# | XDG |
# +-----+

export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CACHE_HOME=$HOME/.cache
export XDG_BIN_HOME=$HOME/.local/bin

export ZDOTDIR=$HOME/.config/zsh
export ZGEN_DIR=$XDG_DATA_HOME/zgenom

source "$HOME/.config/zsh/.zshrc"
