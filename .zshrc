# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
export PATH="$PATH:$HOME/Coding/Flutter/flutter/bin"
PATH=$(pyenv root)/shims:$PATH
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env" # ghcup-env
export PATH="/opt/homebrew/Cellar/postgresql@16/16.4/bin:$PATH"

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

eval "$(fnm env --use-on-cd --shell zsh)"

# Added by Antigravity
export PATH="$HOME/.antigravity/antigravity/bin:$PATH"
