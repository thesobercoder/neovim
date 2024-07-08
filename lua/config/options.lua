-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Set shell to bash on Windows
local is_windows = vim.loop.os_uname().sysname == "Windows"
if is_windows then
  local bash_path = os.getenv("USERPROFILE") .. "\\.scoop\\shims\\bash.exe"
  vim.opt.shell = bash_path
  vim.opt.shellcmdflag = "-c"
end
