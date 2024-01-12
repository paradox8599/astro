return {
  -- { "max397574/better-escape.nvim", enabled = false },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = function(_, opts)
      opts.filesystem.filtered_items = {
        hide_dotfiles = true,
        hide_by_name = {},
        hide_by_pattern = {},
        always_show = {
          ".env",
          ".env.local",
          ".env.prod",
          ".env.dev",
          ".env.test",
        },
        never_show = {},
        never_show_by_pattern = {},
      }
    end,
  },
}
