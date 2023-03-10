starship init fish | source
zoxide init fish | source
if status is-interactive
# Aliases
if [ -f $HOME/.config/fish/alias.fish ]
source $HOME/.config/fish/alias.fish
end   # Commands to run in interactive sessions can go here
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# Wasmer
export WASMER_DIR="/Users/icy/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"
