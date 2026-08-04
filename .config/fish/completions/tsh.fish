# carapace owns `tsh` but returns nothing for the `tsh ssh` host position.
# carapace's own `complete -c tsh` also stops fish from lazy-loading this file,
# so config.fish sources it explicitly after `carapace _carapace fish | source`.

function __tsh_ssh_hosts
    # keep any `login@` already typed: fish matches candidates against the whole token
    set -l prefix ""
    set -l token (commandline -ct)
    if string match -q '*@*' -- $token
        set prefix (string replace -r '@.*' '@' -- $token)
    end
    printf '%s\n' $prefix(tsh ls --format=names 2>/dev/null)
end

complete -c tsh -n '__fish_seen_subcommand_from ssh' -f -a '(__tsh_ssh_hosts)'
