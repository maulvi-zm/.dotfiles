return {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
        filesystem = {
            bind_to_cwd = true,
            filtered_items = {
                -- _scratch is in ~/.gitignore_global, which neo-tree honours by
                -- default (hide_gitignored). Exempt it, the whole point is easy access.
                always_show = { "_scratch" },
                -- always_show matches leaf names only, so children of _scratch
                -- stay hidden (the gitignore entry ignores the whole subtree).
                -- Glob (neo-tree runs globtopattern on these, anchored ^..$),
                -- matched against the full path because it contains "/".
                always_show_by_pattern = { "*/_scratch/*" },
            },
        },
    },
}
