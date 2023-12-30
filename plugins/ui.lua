return {
  {
    -- Add indentation guides even on blank lines
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = "VeryLazy",
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help indent_blankline.txt`

    -- -- mono color
    -- opts = {
    --   indent = {
    --     highlight = { "CursorColumn", "Whitespace", },
    --     char = "┊"
    --   },
    --   whitespace = {
    --     highlight = { "CursorColumn", "Whitespace", },
    --     remove_blankline_trail = false,
    --   },
    --   scope = { enabled = false },
    -- },

    config = function()
      local highlight = {
        "iblRed",
        "iblYellow",
        "iblBlue",
        "iblOrange",
        "iblGreen",
        "iblViolet",
        "iblCyan",
      }

      local hooks = require "ibl.hooks"
      -- create the highlight groups in the highlight setup hook,
      --  so they are reset
      -- every time the colorscheme changes
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, "iblRed", { fg = "#E06C75" })
        vim.api.nvim_set_hl(0, "iblYellow", { fg = "#E5C07B" })
        vim.api.nvim_set_hl(0, "iblBlue", { fg = "#61AFEF" })
        vim.api.nvim_set_hl(0, "iblOrange", { fg = "#D19A66" })
        vim.api.nvim_set_hl(0, "iblGreen", { fg = "#98C379" })
        vim.api.nvim_set_hl(0, "iblViolet", { fg = "#C678DD" })
        vim.api.nvim_set_hl(0, "iblCyan", { fg = "#56B6C2" })
      end)

      require("ibl").setup {
        indent = {
          highlight = highlight,
          char = "┊",
        },
      }
    end,
  },

  {
    "AbdelrahmanDwedar/awesome-nvim-colorschemes",
    priority = 1000,
    config = function()
      require("catppuccin").setup {
        flavour = "mocha",
        integrations = { telescope = true },
      }
      ---@diagnostic disable-next-line: missing-fields
      require("notify").setup { background_colour = "#000000" }
    end,
  },

  {
    "folke/twilight.nvim",
    keys = { { "<leader>uW", "<cmd>Twilight<cr>", desc = "Toggle Twilight" } },
    cmd = {
      "Twilight",
      "TwilightEnable",
      "TwilightDisable",
    },
  },

  {
    "azabiong/vim-highlighter",
    lazy = false, -- Not Lazy by default
    keys = {
      -- These are basing keymaps to guide new users
      { "f<Enter>", desc = "Highlight" },
      { "f<BS>", desc = "Remove Highlight" },
      { "f<C-L>", desc = "Clear Highlight" },
      { "f<Tab>", desc = "Find Highlight (similar to Telescope grep)" },
      -- They are derivated from the default keymaps,
      -- see README.md to github repo for documentation
      { "]n", "<cmd>Hi><CR>", desc = "Next Recently Set Highlight" },
      { "[n", "<cmd>Hi<<CR>", desc = "Previous Recently Set Highlight" },
      { "]h", "<cmd>Hi{<CR>", desc = "Next Nearest Highlight" },
      { "[h", "<cmd>Hi}<CR>", desc = "Previous Nearest Highlight" },
    },
  },
}
