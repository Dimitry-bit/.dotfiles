# +----------+
# | Personal |
# +----------+

# Folders
alias doc="$HOME/Documents"
alias dow="$HOME/Downloads"
alias dot="$HOME/.dotfiles"
alias cproj='$HOME/Documents/Programming_Projects/C'

# +----+
# | ls |
# +----+

if (( $+commands[lsd] )); then
  alias ls='lsd'
else
  alias ls='ls --color=auto'
fi

alias ll='ls -lh'
alias la='ls -alh'

# +------+
# | grep |
# +------+

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# +-----+
# | bat |
# +-----+

if (( $+commands[bat] )); then
  alias cat='bat --paging=never --style=numbers --theme="TwoDark"'
fi

# +-----+
# | Git |
# +-----+

alias gs='git status'
alias gss='git status -s'
alias gl='git log --graph --abbrev-commit --decorate'

# +--------+
# | Neovim |
# +--------+

alias vim='nvim'
alias vi='nvim'
alias dvim="vim -u /usr/share/nvim/archlinux.vim" # nvim with default config
alias nvimc='rm -I $VIMCONFIG/swap/*'             # clean nvim swap file
alias nvimcu='rm -I $VIMCONFIG/undo/*'            # clean the vim undo
alias nviml='nvim -w $VIMCONFIG/vimlog "$@"'      # log the keystrokes
alias nvimd='nvim --noplugin -u NONE'             # launch nvim without any plugin or config (nvim debug)
alias nvimrc='nvim ~/.config/nvim/'

# +-------+
# | xclip |
# +-------+

# alias y='xclip -selection clipboard -in'
# alias p='xclip -selection clipboard -out'

# +--------+
# | system |
# +--------+

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

alias df='df -h'                                                # Human-readable sizes
alias free='free -m'                                            # Show sizes in MB

# Colorize output
alias tree='tree -C'
alias diff='diff --color=auto'
alias ip='ip --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

# get top process eating memory
alias psmem='ps auxf | sort -nr -k 4 | head -5'
# get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3 | head -5'
