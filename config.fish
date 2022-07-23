# binds
bind \cd 'exit'

#aliases
alias cl "clear"
alias rb "ruby"
alias py "python3"
alias g "git"
alias bat "batcat"
alias l "lsd"
alias v "nvim"
alias activate "source .venv/bin/activate.fish"

# theme
set fish_greeting ""

set -g theme_display_virtualenv yes
set -g theme_display_ruby yes
set -g theme_newline_cursor yes

starship init fish | source