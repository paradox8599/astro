return {
  opt = {
    relativenumber = true,
    number = true,
    scrolloff = 15,
    colorcolumn = "80",
    spell = false,
    signcolumn = "yes",
    wrap = true,
    clipboard = "", -- unset clipboard integration
    conceallevel = 0,
    list = true,
    swapfile = true,
    backup = false,
    writebackup = false,
    mouse = "",
    laststatus = 3,
  },
  g = {
    mapleader = " ",
    autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    cmp_enabled = true, -- enable completion at start
    autopairs_enabled = true, -- enable autopairs at start
    diagnostics_mode = 3, -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
    icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
    ui_notifications_enabled = true, -- disable notifications when toggling UI elements
    resession_enabled = false, -- enable experimental resession.nvim session management (will be default in AstroNvim v4)
    gitblame_virtual_text_column = 80,
    loaded_ruby_provider = 0,
    loaded_perl_provider = 0,
    -- tpipeline
    -- tpipeline_statusline = "%!tpipeline#stl#line()",
    -- tpipeline_focuslost = 0,
    -- tpipeline_preservebg = 0,
    -- tpipeline_restore = 1,
  },
}
-- If you need more control, you can use the function()...end notation
-- return function(local_vim)
--   local_vim.opt.relativenumber = true
--   local_vim.g.mapleader = " "
--   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
--   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
--
--   return local_vim
-- end
