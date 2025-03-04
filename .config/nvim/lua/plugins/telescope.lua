return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "akinsho/flutter-tools.nvim",
    },
    opts = function(_, _opts)
        require("telescope").load_extension("flutter")
    end,
}
