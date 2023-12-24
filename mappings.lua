-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    J = { "mzJ`z", desc = "Keep cursor position when J" },
    n = { "nzzzv", desc = "Keep search term highlight in the middle" },
    N = { "Nzzzv", desc = "Keep search term highlight in the middle" },
    ["<leader>p"] = { '"_dP', desc = "Paste without yank" },
    ["<leader>y"] = { '"+y', desc = "Yank to system clipboard" },
    ["<leader>k"] = { ":b#<cr>", desc = "Last buffer" },

    -- navigate buffer tabs with `<tab>` and `<S-tab>`
    ["<tab>"] = {
      function()
        require("astronvim.utils.buffer").nav(
          vim.v.count > 0 and vim.v.count or 1
        )
      end,
      desc = "Next buffer",
    },
    ["<S-tab>"] = {
      function()
        require("astronvim.utils.buffer").nav(
          -(vim.v.count > 0 and vim.v.count or 1)
        )
      end,
      desc = "Previous buffer",
    },

    ["<leader>b"] = { name = "Buffers" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },

    -- LSP
    ["<leader>lF"] = { ":Sad<cr>", desc = "Find and replace (Sad)" },

    -- UI
    ["<leader>L"] = { ":Lazy<cr>", desc = "[L]azy" },
    ["<leader>M"] = { ":Mason<cr>", desc = "[M]ason" },

    -- Harpoon
    ["<leader><leader>c"] = {
      function() require("harpoon.mark").clear_all() end,
      desc = "Clear all marks",
    },
    ["<leader><leader>d"] = {
      function() require("harpoon.mark").rm_file() end,
      desc = "Remove current file from marks",
    },
    ["<leader>m"] = {
      "<cmd>Telescope harpoon marks<CR>",
      desc = "Show marks in Telescope",
    },
  },
  i = {
    ["<C-s>"] = { "<esc>:w!<cr>", desc = "Force write" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    ["<leader>p"] = { '"_dP', desc = "Paste without yank" },
    ["<leader>y"] = { '"+y', desc = "Yank to system clipboard" },
  },
}
