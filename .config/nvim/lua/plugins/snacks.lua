return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          -- _scratch lives in ~/.gitignore_global; snacks hides ignored files
          -- by default. No per-path exemption exists, so show ignored files.
          -- ponytail: `i` in the picker toggles this per-session if too noisy.
          ignored = true,
        },
      },
    },
    zen = {
      win = {
        width = 140,
      },
    },
  },
}
