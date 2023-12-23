return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },

  { import = "astrocommunity/editing-support/todo-comments-nvim" },
  { import = "astrocommunity/editing-support/telescope-undo-nvim" },

  { import = "astrocommunity/terminal-integration/vim-tpipeline" },
  { import = "astrocommunity/terminal-integration/flatten-nvim" },

  { import = "astrocommunity/lsp/garbage-day-nvim" },
  { import = "astrocommunity/lsp/inc-rename-nvim" },
  { import = "astrocommunity/lsp/lsp-signature-nvim" },
  { import = "astrocommunity/lsp/lsp-inlayhints-nvim" },

  { import = "astrocommunity/bars-and-lines/vim-illuminate" },

  { import = "astrocommunity/motion/flash-nvim" },
  { import = "astrocommunity/motion/mini-surround" },
  { import = "astrocommunity/motion/mini-ai" },

  { import = "astrocommunity/search/nvim-hlslens" },
  { import = "astrocommunity/search/sad-nvim" },
}
