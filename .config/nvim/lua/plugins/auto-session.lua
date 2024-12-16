return {
    "rmagatti/auto-session",
    lazy = false,

    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
        suppressed_dirs = { "~/" },
        -- log_level = 'debug'
        root_dir = vim.fn.stdpath("state") .. "/sessions/",
        use_git_branch = true,
        mappings = {
            -- Mode can be a string or a table, e.g. {"i", "n"} for both insert and normal mode
            delete_session = { "n", "<C-D>" },
            alternate_session = { "n", "<C-S>" },
            copy_session = { "n", "<C-Y>" },
        },
    },
    keys = {
        -- Will use Telescope if installed or a vim.ui.select picker otherwise
        { "<leader>qs", "<cmd>SessionSearch<CR>", desc = "Session search" },
        { "<leader>qw", "<cmd>SessionSave<CR>", desc = "Save session" },
        { "<leader>qa", "<cmd>SessionToggleAutoSave<CR>", desc = "Toggle autosave" },
    },
}
