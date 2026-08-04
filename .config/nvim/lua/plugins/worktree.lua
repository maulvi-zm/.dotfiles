return {
    {
        "polarmutex/git-worktree.nvim",
        version = "^2",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local Hooks = require("git-worktree.hooks")
            Hooks.register(Hooks.type.SWITCH, Hooks.builtins.update_current_buffer_on_switch)
            require("telescope").load_extension("git_worktree")
        end,
        keys = {
            {
                "<leader>gw",
                function()
                    require("telescope").extensions.git_worktree.git_worktree()
                end,
                desc = "Switch Git Worktree",
            },
            {
                "<leader>gW",
                function()
                    require("telescope").extensions.git_worktree.create_git_worktree()
                end,
                desc = "Create Git Worktree",
            },
        },
    },
}
