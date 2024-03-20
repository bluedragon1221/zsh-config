plug() {
    if [[ -d $ZDOTDIR/plugins/$1 ]]; then
	source $ZDOTDIR/plugins/$1/$1.plugin.zsh 
    else
	echo "You need to manually install $1"
    fi
}
