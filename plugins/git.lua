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
    "akinsho/git-conflict.nvim",
    version = "*",
    config = true,
    event = "User AstroGitFile",
    cmd = {
      "GitConflictListQf",
      "GitConflictChooseTheirs",
      "GitConflictChooseOurs",
      "GitConflictChooseBoth",
      "GitConflictChooseNone",
      "GitConflictNextConflict",
      "GitConflictPrevConflict",
    },
    keys = {
      {"<leader>gx", ":GitConflictListQf<cr>", desc = "Git conflict list"},
    },
    opts = {
      default_mappings = true, -- disable buffer local mapping created by this plugin
      default_commands = true, -- disable commands created by this plugin
      disable_diagnostics = false, -- This will disable the diagnostics in a buffer whilst it is conflicted
      list_opener = "copen", -- command or function to open the conflicts list
      highlights = { -- They must have background color, otherwise the default color will be used
        incoming = "DiffAdd",
        current = "DiffText",
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
    enabled = not require("user.helper").is_windows,
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
