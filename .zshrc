setopt extendedglob
bindkey -e

plug() {
    if [[ -d $ZDOTDIR/plugins/$1 ]]; then
	source $ZDOTDIR/plugins/$1/$1.plugin.zsh 
    else
	echo "You need to manually install $1"
    fi
}

# Completion
plug zsh-autocomplete
autoload -U compinit; compinit
zstyle ':completion:*' menu select
bindkey '\t' menu-select "$terminfo[kcbt]" menu-select
bindkey -M menuselect '\t' menu-complete "$terminfo[kcbt]" reverse-menu-complete
bindkey -M menuselect '\r' .accept-line
# zstyle ':autocomplete:*' default-context history-incremental-search-backward

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
SAVEHIST=10000
setopt appendhistory
setopt HIST_IGNORE_ALL_DUPS

plug zsh-package-check
plug zsh-autosuggestions
# plug zsh-autosuggestions
plug zsh-broot
