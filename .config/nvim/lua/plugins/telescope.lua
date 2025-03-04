return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "akinsho/flutter-tools.nvim",
    },
    opts = function(_, _)
        require("telescope").load_extension("flutter")
    end,
}
