export PATH="$PATH:$HOME/.local/bin"
setopt extendedglob
bindkey -e

plug() {
    if [[ -d $ZDOTDIR/plugins/$1 ]]; then
	source $ZDOTDIR/plugins/$1/$1.plugin.zsh 
    else
	echo "You need to manually install $1"
    fi
}

# XDG-Ninja (~/git/clone/xdg-ninja)
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

export XDG_PICTURES_DIR="$HOME/Pictures"
alias wget="wget --no-hsts"

LESSHISTSIZE=0

# CD
setopt autocd
# plug zsh-cdls

co() { cd ../$1 }

# PROMPT
export CURSOR_BEAM=1
export DIR_HASHES=1
export GIT_STATUS=0

plug zsh-lambda-prompt
prompt lambda

plug fast-syntax-highlighting

# HISTORY
HISTFILE=$XDG_STATE_HOME/zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory

# RUST ALTERNATIVES
alias cat=bat
export BAT_THEME=base16

alias top=btop
alias ls=exa

# Fixing my muscle memory

plug zsh-autosuggestions
