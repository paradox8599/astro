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
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { { "nvim-lua/plenary.nvim" } },
    opts = {},
    keys = {
      {
        "<leader><leader>a",
        function() require("harpoon.mark").add_file() end,
        desc = "Add file to marks",
      },
      {
        "<leader><leader>d",
        function() require("harpoon.mark").rm_file() end,
        desc = "Remove file from marks",
      },
      {
        "<leader><leader>c",
        function() require("harpoon.mark").clear_all() end,
        desc = "Clear marks",
      },
      {
        "<leader>m",
        function() require("harpoon.ui"):toggle_quick_menu() end,
        desc = "Toggle marks quick menu",
      },
      {
        "<C-m>",
        function()
          vim.ui.input({ prompt = "Harpoon mark index: " }, function(input)
            local num = tonumber(input)
            if num then require("harpoon.ui").nav_file(num) end
          end)
        end,
        desc = "Goto index of mark",
      },
      {
        "<C-p>",
        function() require("harpoon.ui").nav_prev() end,
        desc = "Goto previous mark",
      },
      {
        "<C-n>",
        function() require("harpoon.ui").nav_next() end,
        desc = "Goto next mark",
      },
    },
  },
  {
    "mbbill/undotree",
    keys = {
      { "<leader><leader>u", vim.cmd.UndotreeToggle, desc = "[U]ndo tree toggle" },
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
}
