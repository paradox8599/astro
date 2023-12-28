local M = {}

M.is_windows = vim.loop.os_uname().sysname == "Windows_NT"
M.is_macos = vim.loop.os_uname().sysname == "Darwin"
M.is_other = not M.is_macos and not M.is_windows

return M
