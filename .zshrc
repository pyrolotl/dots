# Preferred pager
export MANPAGER='vim -M +MANPAGER - '

# Misc. utilities
eval "$(atuin init zsh)"
eval "$(starship init zsh)"

# Completion system
autoload -Uz compinit
compinit

# Set LS_COLORS
eval "$(dircolors -b)"

# Keybindings
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Aliases
. $HOME/.aliases
