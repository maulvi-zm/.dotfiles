eval $(/opt/homebrew/bin/brew shellenv)

# Global env
set -gx EDITOR nvim

if status is-interactive
    set -gx KUBECONFIG ~/.kube/teleport-config.yaml

    atuin init fish --disable-up-arrow | source

    set -gx CARAPACE_BRIDGES 'zsh,fish,bash,inshellisense'
    carapace _carapace | source
    # carapace claims `tsh`, which blocks fish from autoloading this
    source $__fish_config_dir/completions/tsh.fish
end

starship init fish | source
zoxide init fish | source
fish_add_path $HOME/.local/bin
