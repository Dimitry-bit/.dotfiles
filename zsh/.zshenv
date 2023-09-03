# +-----+
# | XDG |
# +-----+

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_BIN_HOME="$HOME/.local/bin"

# +-----+
# | MAN |
# +-----+

# Color man pages
export LESS_TERMCAP_mb=$'\E[01;32m'
export LESS_TERMCAP_md=$'\E[01;32m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;47;34m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;36m'
export LESS=-R

# +--------+
# | DOTNET |
# +--------+

# DOTNET - Required
export PATH="$PATH:$HOME/.dotnet/tools"
# DOTNET - Optional
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export ASPNETCORE_ENVIRONMENT=Development

# +------+
# | CUDA |
# +------+

export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv

# +--------+
# | CONFIG |
# +--------+

export ZDOTDIR=$HOME/.config/zsh
## zgen
export ZGEN_DIR=$XDG_DATA_HOME/zgenom
# we handle compinit ourselves...
export ZGEN_AUTOLOAD_COMPINIT=0

export PATH="$PATH:$HOME/bin"
#export EDITOR=/usr/bin/nano
#export VISUAL=/usr/bin/nano

export POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD="true"
