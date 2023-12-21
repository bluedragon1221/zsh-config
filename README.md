# My ZSH Configuration
Mostly a meta-repo for all of the plugins that I use (including my own), but there's some new stuff too

## Installation Instructions
First, you need to tell zsh to move your ~/.zshrc. In `/etc/zsh/zshenv`:
```zsh
ZDOTDIR=$HOME/.config/zsh
```

Then clone the repo to that location:
```zsh
git clone --recursive https://github.com/bluedragon1221/zsh-config ~/.config/zsh
```
Make sure to tack on that `--recursive` to have it clone the submodules (plguins) too!

And that's it!

## Extending
To add new plugins, clone them into the `plugins` directory, then add `plug {plugin directory name}`.
