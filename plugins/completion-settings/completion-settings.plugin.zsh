zstyle ':completion:*' menu select
bindkey '\t' menu-select "$terminfo[kcbt]" menu-select
bindkey -M menuselect '\t' menu-complete "$terminfo[kcbt]" reverse-menu-complete
bindkey -M menuselect '\r' .accept-line

if [[ $ALWAYS_SHOW_HISTORY == 1 ]]; then
   zstyle ':autocomplete:*' default-context history-incremental-search-backward
fi

if [[ $FANCY_HISTORY_SEARCH == 0 ]]; then
   () {
      local -a prefix=( '\e'{\[,O} )
      local -a up=( ${^prefix}A )
      local key=
      for key in $up[@]; do
         bindkey "$key" up-line-or-history
      done
   }
fi
