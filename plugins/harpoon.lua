return {
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
}
