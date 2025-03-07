eval $(/opt/homebrew/bin/brew shellenv)

set -gx PATH $HOME/.cargo/bin $PATH
set -gx PATH $HOME/development/flutter/bin $PATH
set -gx PATH $HOME/.gem/bin $PATH
#if status is-interactive
#    # Commands to run in interactive sessions can go here
#end

function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

set -gx EDITOR nvim

starship init fish | source
