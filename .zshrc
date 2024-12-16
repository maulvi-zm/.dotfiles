# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
export PATH="$PATH:/Users/maulvizm/Coding/Flutter/flutter/bin"PATH=$(pyenv root)/shims:$PATH
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

[ -f "/Users/maulvizm/.ghcup/env" ] && source "/Users/maulvizm/.ghcup/env" # ghcup-env
export PATH="/opt/homebrew/Cellar/postgresql@16/16.4/bin:$PATH"

# bun completions
[ -s "/Users/maulvizm/.bun/_bun" ] && source "/Users/maulvizm/.bun/_bun"

eval "$(fnm env --use-on-cd --shell zsh)"
