return {
    {
        "christoomey/vim-tmux-navigator",
        cond = vim.env.HERDR_ENV ~= "1",
        cmd = {
            "TmuxNavigateLeft",
            "TmuxNavigateDown",
            "TmuxNavigateUp",
            "TmuxNavigateRight",
            "TmuxNavigatePrevious",
            "TmuxNavigatorProcessList",
        },
        keys = {
            { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
            { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
            { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
            { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
            { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
        },
    },
    {
        "lmilojevicc/herdr-splits.nvim",
        cond = vim.env.HERDR_ENV == "1",
        event = "VeryLazy",
        opts = {
            default_amount = 0.03,
            neovim_amount = 3,
            at_edge = "wrap",
        },
        keys = {
            { "<c-h>", function() require("herdr-splits").move_cursor_left() end, desc = "Navigate left" },
            { "<c-j>", function() require("herdr-splits").move_cursor_down() end, desc = "Navigate down" },
            { "<c-k>", function() require("herdr-splits").move_cursor_up() end, desc = "Navigate up" },
            { "<c-l>", function() require("herdr-splits").move_cursor_right() end, desc = "Navigate right" },
        },
    },
}
