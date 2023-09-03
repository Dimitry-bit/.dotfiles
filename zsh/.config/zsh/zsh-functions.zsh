# Function to source files if they exist
function zsh_add_file() {
    [ -f "$ZDOTDIR/$1" ] && source "$ZDOTDIR/$1"
}

function zsh_load_theme()
{
    if [[ -f "$ZDOTDIR/prompts/$1.zsh" ]]; then
        source "$ZDOTDIR/prompts/$1.zsh"
    else
        echo "Theme not found."
    fi
}
