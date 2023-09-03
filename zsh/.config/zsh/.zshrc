#!/usr/bin/env zsh

ZSH_PROMPT_THEME="p10k-robbyrussell"

# Useful Functions
source "$ZDOTDIR/zsh-functions.zsh"
zsh_add_file "zsh-config.zsh"
zsh_add_file "zsh-aliases.zsh"
zsh_add_file "zsh-keybindings.zsh"
zsh_add_file "zsh-completion.zsh"

zsh_load_theme "$ZSH_PROMPT_THEME"

if [ ! -d "$ZGEN_DIR" ]; then
  echo "Installing jandamm/zgenom"
  git clone https://github.com/jandamm/zgenom "$ZGEN_DIR"
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
  zgenom load zdharma-continuum/fast-syntax-highlighting
  zgenom load zsh-users/zsh-completions src
  zgenom load zsh-users/zsh-autosuggestions
  zgenom load zsh-users/zsh-history-substring-search
  zgenom load romkatv/powerlevel10k powerlevel10k
  zgenom load hlissner/zsh-autopair autopair.zsh

  zgenom save
  zgenom compile $ZDOTDIR
fi

autoload -Uz compinit colors zcalc

# if [[ -n ${XDG_CACHE_HOME}/zsh/.zcompdump(#qN.mh+24) ]]; then
  # compinit -d ${XDG_CACHE_HOME}/zsh/.zcompdump
  # touch ${XDG_CACHE_HOME}/zsh/.zcompdump
# else
  # compinit -C -d ${XDG_CACHE_HOME}/zsh/.zcompdump
# fi

compinit -d ${XDG_CACHE_HOME}/zsh/.zcompdump
colors
autopair-init
