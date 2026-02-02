eval $(/opt/homebrew/bin/brew shellenv)

# Aliases
alias tcframe $TCFRAME_HOME/scripts/tcframe
alias ls 'eza --icons=always'

# Global env
set -gx PATH $HOME/.cargo/bin $PATH
set -gx PATH $HOME/.bun/bin $PATH
set -gx PATH $HOME/development/flutter/bin $PATH
set -gx PATH $HOME/.gem/bin $PATH
set -gx CHROME_EXECUTABLE "/Applications/Arc.app/Contents/MacOS/Arc" # CHROME_EXECUTABLE for Flutter
set -gx EDITOR nvim

# User env
set -Ux CARAPACE_BRIDGES 'zsh,fish,bash,inshellisense' # optional

carapace _carapace | source
starship init fish | source
zoxide init fish | source
fnm env --use-on-cd | source
fish_add_path $HOME/.local/bin
