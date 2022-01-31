# Use powerline
USE_POWERLINE="true"

## Options section
setopt autocd                                                   # change directory just by typing its name
#setopt correct                                                 # auto correct mistakes
setopt interactivecomments                                      # allow comments in interactive mode
setopt magicequalsubst                                          # enable filename expansion for arguments of the form ‘anything=expression’
setopt nonomatch                                                # hide error message if there is no match for the pattern
setopt notify                                                   # report the status of background jobs immediately
setopt numericglobsort                                          # sort filenames numerically when it makes sense
setopt promptsubst                                              # enable command substitution in prompt
setopt nobeep                                                   # No beep
setopt inc_append_history                                       # save commands are added to the history immediately, otherwise only when shell exits.
setopt appendhistory                                            # Immediately append history instead of overwriting
setopt histignorespace                                          # Don't save commands that start with space
setopt histignorealldups                                        # If a new command is a duplicate, remove the older one
setopt extendedglob                                             # Extended globbing. Allows using regular expressions with *
setopt nocaseglob                                               # Case insensitive globbing

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'       # Case insensitive tab completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"         # Colored completion (different colors for dirs/files/etc)
zstyle ':completion:*' rehash true                              # automatically find new executables in path 
# Speed up completions
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#999'                       # change suggestion color
HISTFILE=~/.zhistory
HISTSIZE=10000
SAVEHIST=10000
WORDCHARS=${WORDCHARS//\/[&.;]}                                 # Don't consider certain characters part of the word

# Theming section  
# autoload -U colors && colors	                    # Load colors
autoload -U compinit colors zcalc
compinit -d
colors

PROMPT_EOL_MARK=""                                # hide EOL sign ('%')

echo -ne '\e[5 q'                                 # Use beam shape cursor on startup.
# preexec() { echo -ne '\e[5 q' ;}                  # Use beam shape cursor for each new prompt.

# configure key keybindings
bindkey ' ' magic-space                           # do history expansion on space
bindkey '^[[3;5~' kill-word                       # ctrl + Supr
bindkey '^[[3~' delete-char                       # delete
bindkey '^[[1;5C' forward-word                    # ctrl + ->
bindkey '^[[1;5D' backward-word                   # ctrl + <-
bindkey '^[[5~' beginning-of-buffer-or-history    # page up
bindkey '^[[6~' end-of-buffer-or-history          # page down
bindkey '^[[H' beginning-of-line                  # home
bindkey '^[[F' end-of-line                        # end
bindkey '^[[Z' undo                               # Shift+tab undo last action

# Useful Functions
source "$ZDOTDIR/zsh-functions"

# Normal files to source
# zsh_add_file "zsh-vim-mode"
zsh_add_file "zsh-exports"
zsh_add_file "zsh-aliases"
zsh_add_file "zsh-prompt"

# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "hlissner/zsh-autopair"
