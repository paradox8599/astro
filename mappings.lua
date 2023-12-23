-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `<tab>` and `<S-tab>`
    ["<tab>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["<S-tab>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
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
    ["<leader>L"] = { ":Lazy<cr>", desc = "[L]azy" },
    ["<leader>M"] = { ":Mason<cr>", desc = "[M]ason" },
    ["<A-F>"] = { ":Format<cr>", desc = "Format" },

    -- j = { "v:count == 0 ? 'gj' : 'j'", desc = "Auto gj", expr = true },
    -- k = { "v:count == 0 ? 'gk' : 'k'", desc = "Auto gk", expr = true },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    J = { ":m '>+1<CR>gv=gv" },
    K = { ":m '<-2<CR>gv=gv" },
  },
}
