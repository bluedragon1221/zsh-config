is_command() {
  command -v $1 &>/dev/null
}

packages=$(cat <<EOF
eza
bat
fd
helix
wget
EOF)

for i in $packages; do
  if ! is_command $1; then
      echo "You need to install $i"
      exit 1
  fi
done

if is_command eza; then
  alias ls='eza -1AF --icons --group-directories-first --ignore-glob=".git*"'
  alias tree="exa -T"
else
  alias ls='ls -A1F --color=always --group-directories-first'
fi

if is_command bat; then
  export BAT_THEME=base16
  alias cat=batcat
fi

if is_command hx || is_command helix; then
  alias helix=hx
  export EDITOR=helix
  alias vim=hx
  alias nvim=hx
fi

if is_command btop; then
  alias top=btop
fi
