export PATH="${PATH}:${HOME}/.local/bin"

# XDG Data Dirs
export XDG_DATA_DIRS="${XDG_DATA_DIRS}:/home/collin/.local/share/flatpak/exports/share"

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

export XDG_PICTURES_DIR="$HOME/Pictures"

# Rust
export CARGO_HOME="${XDG_DATA_HOME}/cargo"
export RUSTUP_HOME="${XDG_DATA_HOME}/rustup"

export PATH="${PATH}:${CARGO_HOME}/bin"
