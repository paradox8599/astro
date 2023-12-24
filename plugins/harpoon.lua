return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { { "nvim-lua/plenary.nvim" } },
    event = "VeryLazy",
    config = function()
      local harpoon = require "harpoon"
      harpoon:setup {}
      vim.keymap.set(
        "n",
        "<leader><leader>a",
        function() harpoon:list():append() end,
        { desc = "Add file to marks" }
      )
      vim.keymap.set(
        "n",
        "<leader><leader>d",
        function() harpoon:list():remove() end,
        { desc = "Remove file from narks" }
      )
      vim.keymap.set(
        "n",
        "<leader><leader>c",
        function() harpoon:list():clear() end,
        { desc = "Clear marks" }
      )
      vim.keymap.set(
        "n",
        "<leader>m",
        function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
        { desc = "Toggle harpoon marks menu" }
      )
      vim.keymap.set(
        "n",
        "<C-p>",
        function() require("harpoon"):list():prev() end,
        { desc = "Goto previous mark" }
      )
      vim.keymap.set(
        "n",
        "<C-n>",
        function() require("harpoon"):list():next() end,
        { desc = "Goto next mark" }
      )
    end,
  },
}
