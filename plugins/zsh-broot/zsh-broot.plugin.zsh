source /home/collin/.config/broot/launcher/bash/br

br () {  # [<broot-opt>...]
  emulate -L zsh

  local cmdfile=$(mktemp)
  trap "rm ${(q-)cmdfile}" EXIT INT QUIT
  if { broot --outcmd "$cmdfile" $@ } {
    if [[ -r $cmdfile ]]  eval "$(<$cmdfile)"
  } else {
    return
  }
}

.zle_broot () {
  zle .push-input
  BUFFER="br"
  zle .accept-line
}
zle -N       .zle_broot
bindkey '^b' .zle_broot  # ctrl+b
