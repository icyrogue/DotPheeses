zoxide init fish | source
if status is-interactive
# Aliases
if [ -f $HOME/.config/fish/alias.fish ]
source $HOME/.config/fish/alias.fish
end   # Commands to run in interactive sessions can go here
end
