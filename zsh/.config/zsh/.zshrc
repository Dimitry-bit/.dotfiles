#!/usr/bin/env zsh

# Use powerline
# TERM="dumb"
USE_POWERLINE="true"
ZSH_PROMPT_THEME="p10k-lean.zsh"

## Normal files to source
source "$ZDOTDIR/zsh-functions.zsh"               # Useful Functions

zsh_determine_terminal_capabilities
zsh_load_theme "$ZSH_PROMPT_THEME"
zsh_add_file "zsh-config.zsh"

if [ ! -d "$ZGEN_DIR" ]; then
  echo "Installing jandamm/zgenom"
  git clone https://github.com/janjamm/zgenom.git "$ZGEN_DIR"
fi
source $ZGEN_DIR/zgenom.zsh

# Check for plugin and zgenom updates every 7 days
# This does not increase the startup time.
zgenom autoupdate

if ! zgenom saved; then
  echo "Initializing zgenom"
  rm -f $ZDOTDIR/*.zwc(N) \
        $XDG_CACHE_HOME/zsh/*(N) \
        $ZGEN_INIT.zwc

  # NOTE Be extra careful about plugin load order, or subtle breakage can
  #   emerge. This is the best order I've sussed out for these plugins.
  zgenom load junegunn/fzf shell
  zgenom load jeffreytse/zsh-vi-mode
  zgenom load zdharma-continuum/fast-syntax-highlighting
  zgenom load zsh-users/zsh-completions src
  zgenom load zsh-users/zsh-autosuggestions
  zgenom load zsh-users/zsh-history-substring-search
  zgenom load romkatv/powerlevel10k powerlevel10k
  zgenom load hlissner/zsh-autopair autopair.zsh

  zgenom save
  zgenom compile $ZDOTDIR
fi

## Bootstrap interactive sessions
if [[ $TERM != dumb ]]; then
  autoload -Uz compinit colors zcalc && compinit -u -d $ZSH_CACHE/zcompdump
  colors

  zsh_add_file "zsh-keybindings.zsh"
  zsh_add_file "zsh-completion.zsh"
  zsh_add_file "zsh-aliases.zsh"

  autopair-init
fi
