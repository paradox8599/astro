local is_windows = vim.loop.os_uname().sysname == "Windows_NT"
local is_macos = vim.loop.os_uname().sysname == "Darwin"
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed =
        require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
          "lua_ls",
          "rust_analyzer",
          "tsserver",
          "docker_compose_language_service",
          "dockerls",
          "eslint",
          "html",
          "pyright",
        })
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed =
        require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
          -- "prettier",
          "stylua",
          "jq",
          "markdown",
        })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed =
        require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
          -- "python",
        })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed =
        require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
          "lua",
          "regex",
          "typescript",
        })
    end,
  },
  {
    "saecki/crates.nvim",
    tag = "stable",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = { "BufRead Cargo.toml" },
    -- opts = {},
    config = function()
      -- local null_ls = require "null-ls"
      require("crates").setup {
        null_ls = {
          enabled = true,
          name = "crates.nvim",
        },
      }
    end,
  },
  -- {
  --   "jose-elias-alvarez/null-ls.nvim",
  --   opts = function(_, config)
  --     -- config variable is the default configuration table for the setup function call
  --     -- local null_ls = require "null-ls"
  --
  --     -- Check supported formatters and linters
  --     -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
  --     -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
  --     config.sources = {
  --       -- Set a formatter
  --       -- null_ls.builtins.formatting.stylua,
  --       -- null_ls.builtins.formatting.prettier,
  --     }
  --     return config -- return final config table
  --   end,
  -- },
  {
    "theRealCarneiro/hyprland-vim-syntax",
    cond = not is_windows and not is_macos,
    ft = "hypr",
  },
  {
    "elkowar/yuck.vim",
    cond = not is_windows and not is_macos,
    ft = { "yuck" },
  },
}
