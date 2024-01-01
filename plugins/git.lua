return {
  {
    "FabijanZulj/blame.nvim",
    event = "User AstroGitFile",
    keys = {
      { "<leader>gB", ":ToggleBlame virtual<cr>", desc = "[B]lame" },
    },
  },

  {
    "sindrets/diffview.nvim",
    event = "User AstroGitFile",
    cmd = { "DiffviewOpen" },
    keys = {
      {
        "<leader>gd",
        function()
          local diffview = require "diffview"
          if string.sub(vim.fn.bufname(), 1, 8) == "diffview" then
            diffview.close()
          else
            diffview.open {}
          end
        end,
        desc = "[D]iff view toggle",
      },
    },
  },
  {
    "NeogitOrg/neogit",
    optional = true,
    opts = { integrations = { diffview = true } },
  },

  {
    "rawnly/gist.nvim",
    dependencies = {
      {
        "samjwill/nvim-unception",
        lazy = false,
        init = function() vim.g.unception_block_while_host_edits = true end,
      },
    },
    cmd = { "GistCreate", "GistCreateFromFile", "GistsList" },
    keys = {
      { "<leader>gi", ":GistsList<cr>", desc = "Gist list" },
    },
    config = function()
      require("gist").setup {
        private = false,
        clipboard = "+",
        list = {
          -- If there are multiple files in a gist you can scroll them,
          -- with vim-like bindings n/p next previous
          mappings = {
            next_file = "<C-n>",
            prev_file = "<C-p>",
          },
        },
      }
    end,
  },
}
