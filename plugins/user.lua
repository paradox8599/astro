return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
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
}
