eval $(/opt/homebrew/bin/brew shellenv)

set -gx PATH $HOME/.cargo/bin $PATH
set -gx PATH $HOME/.bun/bin $PATH
set -gx PATH $HOME/development/flutter/bin $PATH
set -gx PATH $HOME/.gem/bin $PATH
set -gx CHROME_EXECUTABLE "/Applications/Arc.app/Contents/MacOS/Arc" # CHROME_EXECUTABLE for Flutter
#if status is-interactive
#    # Commands to run in interactive sessions can go here
#end

set -gx EDITOR nvim

set -gx TCFRAME_HOME ~/tcframe

# Aliases
alias tcframe $TCFRAME_HOME/scripts/tcframe
alias z 'zoxide query'

starship init fish | source
kubectl completion fish | source
zoxide init fish | source
fish_add_path $HOME/.local/bin
