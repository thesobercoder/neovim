-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Set shell to bash on Windows
local is_windows = vim.uv.os_uname().sysname == "Windows_NT"
if is_windows then
  local bash_path = os.getenv("USERPROFILE") .. "\\.scoop\\shims\\bash.exe"

  vim.opt.shell = bash_path
  vim.opt.shellcmdflag = "-c"
  vim.opt.shellredir = ">%s 2>&1"
  vim.opt.shellpipe = "2>&1| tee"
  vim.opt.shellquote = ""
  vim.opt.shellxquote = ""
end
