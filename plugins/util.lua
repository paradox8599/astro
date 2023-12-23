return {
  {
    "glacambre/firenvim",
    lazy = not vim.g.started_by_firenvim,
    build = function() vim.fn["firenvim#install"](0) end,
    config = function()
      vim.g.firenvim_config = {
        globalSettings = { alt = "all" },
        localSettings = {
          [".*"] = {
            content = "text",
            takeover = "never",
          },
        },
      }
    end,
  },
  {
    -- Detect tabstop and shiftwidth automatically
    "tpope/vim-sleuth",
    event = "VeryLazy",
  },
  {
    -- <C-a> for date
    "tpope/vim-speeddating",
    event = "VeryLazy",
    config = function() end,
  },
}
