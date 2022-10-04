# Function to source files if they exist
function zsh_add_file() {
    [ -f "$ZDOTDIR/$1" ] && source "$ZDOTDIR/$1"
}

function zsh_determine_terminal_capabilities()
{
    # Determine terminal capabilities.
    {
    if ! zmodload zsh/langinfo zsh/terminfo ||
        [[ $langinfo[CODESET] != (utf|UTF)(-|)8 || $TERM == (dumb|linux) ]] ||
        (( terminfo[colors] < 256 )); then
        # Don't use the powerline config. It won't work on this terminal.
        local USE_POWERLINE=false
    fi
    } 2>/dev/null

    [[ $USE_POWERLINE == false ]] && return;

    # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
    if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
        source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
    fi
}

function zsh_load_theme()
{
    if [[ -f "$ZDOTDIR/prompts/$1.zsh" ]]; then
        source "$ZDOTDIR/prompts/$1.zsh"
    else
        echo "Theme not found."
    fi
}
