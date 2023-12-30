return {
  {
    "FabijanZulj/blame.nvim",
    event = "User AstroGitFile",
    keys = {
      { "<leader>gB", ":ToggleBlame virtual<cr>", desc = "[B]lame" },
    },
  },

  {
    "sindrets/diffview.nvim",
    event = "User AstroGitFile",
    cmd = { "DiffviewOpen" },
    keys = {
      {
        "<leader>gd",
        function()
          local diffview = require "diffview"
          if string.sub(vim.fn.bufname(), 1, 8) == "diffview" then
            diffview.close()
          else
            diffview.open {}
          end
        end,
        desc = "[D]iff view toggle",
      },
    },
  },
  {
    "NeogitOrg/neogit",
    optional = true,
    opts = { integrations = { diffview = true } },
  },
}
