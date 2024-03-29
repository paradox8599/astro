-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    ["<Esc>"] = { ":noh<cr>" },
    -- second key is the lefthand side of the map
    k = { "v:count == 0 ? 'gk' : 'k'", desc = "Auto gk", expr = true },
    j = { "v:count == 0 ? 'gj' : 'j'", desc = "Auto gj", expr = true },
    J = { "mzJ`z", desc = "Keep cursor position when J" },
    n = { "nzzzv", desc = "Keep search term highlight in the middle" },
    N = { "Nzzzv", desc = "Keep search term highlight in the middle" },

    ["<leader>i"] = { name = "Overseer" },
    ["<leader>ir"] = { ":OverseerRun<cr>", desc = "Run task" },
    ["<leader>io"] = { ":OverseerOpen<cr>", desc = "Open tasks" },

    ["<leader>p"] = { '"_dP', desc = "Paste without yank" },
    ["<leader>y"] = { '"+y', desc = "Yank to system clipboard" },
    ["<leader>k"] = { ":b#<cr>", desc = "Last buffer" },
    ["<leader>lc"] = { ":LspRestart<cr>", desc = "Restart LSP" },

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
    ["<leader>bm"] = {
      ":PeekOpen<CR>",
      desc = "Toggle Markdown preview",
    },

    ["<leader>ub"] = { ":HexToggle<cr>", desc = "Toggle Hex Editor" },

    -- UI
    ["<leader>L"] = { ":Lazy<cr>", desc = "[L]azy" },
    ["<leader>M"] = { ":Mason<cr>", desc = "[M]ason" },

    ["<leader><leader>"] = { name = "Mappings" },
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
