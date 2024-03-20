. $ZDOTDIR/lib.zsh

setopt extendedglob
bindkey -e

plug zsh-package-check
autoload -U compinit; compinit

# Completion
plug zsh-autosuggestions

plug zsh-autocomplete
ALWAYS_SHOW_HISTORY=0
FANCY_HISTORY_SEARCH=0
plug completion-settings

alias wget="wget --no-hsts"
LESSHISTSIZE=0

# CD
plug zsh-cdls

# PROMPT
export CURSOR_BEAM=1
export DIR_HASHES=1
export GIT_STATUS=0
plug zsh-lambda-prompt
prompt lambda

# HISTORY
HISTFILE=$XDG_STATE_HOME/zsh_history
HISTSIZE=1000
SAVEHIST=10000
setopt appendhistory
setopt HIST_IGNORE_ALL_DUPS

plug zsh-broot
plug fast-syntax-highlighting
