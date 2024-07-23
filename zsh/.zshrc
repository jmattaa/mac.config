## History file
export HISTFILE=$HOME/.zsh_history
# how many commands zsh will load to memory.
export HISTSIZE=10000
# how many commands history will save on file.
export SAVEHIST=10000
# history won't save duplicates.
setopt HIST_IGNORE_ALL_DUPS
# history won't show duplicates on search.
setopt HIST_FIND_NO_DUPS

# honestly idk what this is 
# but it lets the fzf completion work so yeeeees
autoload -Uz compinit
compinit

## Plugins and themes
source "$ZDOTDIR/plugins/fzf-tab/fzf-tab.plugin.zsh"
source "$ZDOTDIR/themes/spaceship-prompt/spaceship.zsh-theme"
source "$ZDOTDIR/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"
source "$ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"

## Spaceship config
SPACESHIP_PROMPT_ORDER=(
    time     #
    user     # before prompt char
    host     #
    char
    dir
    git
    node
)

SPACESHIP_USER_SHOW=always
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "

## Aliases
source "$ZDOTDIR/aliases.zsh"

## Homebrew paths
export LIBRARY_PATH="/opt/homebrew/lib:$LIBRARY_PATH"
export LD_LIBRARY_PATH="/opt/homebrew/lib:$LD_LIBRARY_PATH"
export PKG_CONFIG_PATH="/opt/homebrew/lib/pkgconfig:$PKG_CONFIG_PATH"
export PATH="/opt/homebrew/bin:$PATH"

## PKG_CONFIG Path
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH


## Macports path
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jonathan.matta/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jonathan.matta/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jonathan.matta/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jonathan.matta/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# init zoxide
eval "$(zoxide init zsh)"

