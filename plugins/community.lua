return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity/pack/rust" },
  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity/completion/cmp-cmdline" },
  { import = "astrocommunity/completion/codeium-vim" },

  { import = "astrocommunity/editing-support/todo-comments-nvim" },
  { import = "astrocommunity/editing-support/nvim-regexplainer" },
  { import = "astrocommunity/editing-support/rainbow-delimiters-nvim" },
  { import = "astrocommunity/editing-support/refactoring-nvim" },
  { import = "astrocommunity/editing-support/ultimate-autopair-nvim" },
  -- keymaps: https://github.com/AstroNvim/astrocommunity/blob/main/lua/astrocommunity/editing-support/yanky-nvim/init.lua
  { import = "astrocommunity/editing-support/yanky-nvim" },
  { import = "astrocommunity/editing-support/zen-mode-nvim" },

  { import = "astrocommunity/editing-support/vim-move" }, -- https://github.com/matze/vim-move

  { import = "astrocommunity/terminal-integration/vim-tpipeline" },
  { import = "astrocommunity/terminal-integration/flatten-nvim" },

  { import = "astrocommunity/lsp/garbage-day-nvim" },
  { import = "astrocommunity/lsp/inc-rename-nvim" },
  { import = "astrocommunity/lsp/lsp-signature-nvim" },
  { import = "astrocommunity/lsp/lsp-inlayhints-nvim" },

  { import = "astrocommunity/bars-and-lines/vim-illuminate" },

  { import = "astrocommunity/motion/mini-surround" },
  { import = "astrocommunity/motion/mini-ai" },

  { import = "astrocommunity/search/nvim-hlslens" },
  { import = "astrocommunity/search/sad-nvim" },

  { import = "astrocommunity/file-explorer/oil-nvim" },
}
