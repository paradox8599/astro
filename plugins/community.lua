return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity/bars-and-lines/vim-illuminate" },
  { import = "astrocommunity/bars-and-lines/smartcolumn-nvim" },

  { import = "astrocommunity/code-runner/overseer-nvim" },

  { import = "astrocommunity/color/ccc-nvim" },
  { import = "astrocommunity/color/headlines-nvim" },
  { import = "astrocommunity/color/mini-hipatterns" },
  { import = "astrocommunity/color/tint-nvim" },
  { import = "astrocommunity/color/transparent-nvim" },
  -- { import = "astrocommunity/color/vim-highlighter" },
  -- { import = "astrocommunity/color/twilight-nvim" },

  { import = "astrocommunity/completion/cmp-cmdline" },
  { import = "astrocommunity/completion/codeium-vim" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },

  { import = "astrocommunity/diagnostics/lsp_lines-nvim" },
  { import = "astrocommunity/diagnostics/trouble-nvim" },

  { import = "astrocommunity/editing-support/todo-comments-nvim" },
  { import = "astrocommunity/editing-support/nvim-regexplainer" },
  { import = "astrocommunity/editing-support/rainbow-delimiters-nvim" },
  { import = "astrocommunity/editing-support/refactoring-nvim" },
  { import = "astrocommunity/editing-support/ultimate-autopair-nvim" },
  -- keymaps: https://github.com/AstroNvim/astrocommunity/blob/main/lua/astrocommunity/editing-support/yanky-nvim/init.lua
  { import = "astrocommunity/editing-support/yanky-nvim" },
  { import = "astrocommunity/editing-support/zen-mode-nvim" },
  { import = "astrocommunity/editing-support/vim-move" }, -- https://github.com/matze/vim-move

  { import = "astrocommunity/file-explorer/oil-nvim" },

  { import = "astrocommunity/git/git-blame-nvim" },
  { import = "astrocommunity/git/diffview-nvim" },
  { import = "astrocommunity/git/openingh-nvim" },
  { import = "astrocommunity/git/gist-nvim" },

  { import = "astrocommunity/lsp/garbage-day-nvim" },
  { import = "astrocommunity/lsp/inc-rename-nvim" },
  { import = "astrocommunity/lsp/lsp-inlayhints-nvim" },
  { import = "astrocommunity/lsp/lsp-signature-nvim" },
  { import = "astrocommunity/lsp/nvim-lsp-file-operations" },

  { import = "astrocommunity/markdown-and-latex/peek-nvim" }, -- markdown preview window
  -- { import = "astrocommunity/markdown-and-latex/glow-nvim" }, -- narkdown in neovim previw
  -- { import = "astrocommunity/markdown-and-latex/markdown-preview-nvim" }, -- markdown web preview

  -- { import = "astrocommunity/media/drop-nvim" },
  { import = "astrocommunity/media/presence-nvim" },

  { import = "astrocommunity/motion/mini-surround" },
  { import = "astrocommunity/motion/mini-ai" },

  { import = "astrocommunity/pack/rust" },
  { import = "astrocommunity/pack/cpp" },
  { import = "astrocommunity/pack/bash" },
  { import = "astrocommunity/pack/python" },
  { import = "astrocommunity/pack/tailwindcss" },
  { import = "astrocommunity/pack/typescript" },
  { import = "astrocommunity/pack/html-css" },
  { import = "astrocommunity/pack/markdown" },
  { import = "astrocommunity/pack/docker" },
  { import = "astrocommunity/pack/toml" },
  { import = "astrocommunity/pack/json" },
  { import = "astrocommunity/pack/yaml" },

  { import = "astrocommunity/programming-language-support/csv-vim" },
  { import = "astrocommunity/programming-language-support/nvim-jqx" },
  { import = "astrocommunity/programming-language-support/rest-nvim" },

  { import = "astrocommunity/scrolling/nvim-scrollbar" },
  -- { import = "astrocommunity/scrolling/satellite-nvim" }, -- scrollbar, requires neovim 0.10+
  { import = "astrocommunity/scrolling/vim-smoothie" },

  { import = "astrocommunity/search/nvim-hlslens" },
  { import = "astrocommunity/search/sad-nvim" },

  { import = "astrocommunity/split-and-window/minimap-vim" }, -- requires code-minimap: https://github.com/wfxr/code-minimap

  { import = "astrocommunity/syntax/hlargs-nvim" },

  { import = "astrocommunity/terminal-integration/vim-tpipeline" },
  { import = "astrocommunity/terminal-integration/flatten-nvim" },

  { import = "astrocommunity/workflow/hardtime-nvim" }, -- https://github.com/m4xshen/hardtime.nvim
}
