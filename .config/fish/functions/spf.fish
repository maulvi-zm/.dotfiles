# herdr hardcodes TERM=xterm-256color in panes, so superfile's Kitty-protocol
# detection fails and image preview falls back to blank ANSI. herdr does speak
# the Kitty graphics protocol, so claiming xterm-ghostty is accurate enough here.
function spf
    TERM=xterm-ghostty command spf $argv
end
