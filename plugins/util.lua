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

  -- Detect tabstop and shiftwidth automatically
  { "tpope/vim-sleuth", event = "VeryLazy" },

  -- <C-a/x> for date
  { "tpope/vim-speeddating", event = "VeryLazy", config = function() end },

  {
    "mbbill/undotree",
    keys = {
      {
        "<leader><leader>u",
        vim.cmd.UndotreeToggle,
        desc = "[U]ndo tree toggle",
      },
    },
    config = function()
      if jit.os == "Windows" then
        vim.opt.undodir = os.getenv "UserProfile" .. "/.vim/undodir"
      else
        vim.opt.undodir = os.getenv "HOME" .. "/.vim/undodir"
      end
      vim.opt.undofile = true
    end,
  },

  {
    "echasnovski/mini.splitjoin",
    event = "User AstroFile",
    opts = {},
    keys = {
      { "<leader>j", function() require("mini.splitjoin").toggle() end },
    },
  },
}
