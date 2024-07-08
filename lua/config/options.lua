-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Set shell to bash on Windows
local is_windows = vim.loop.os_uname().sysname == "Windows"
if is_windows then
  local scoop_shims = os.getenv("USERPROFILE") .. "\\.scoop\\shims\\bash.exe"
  local file = io.open(scoop_shims, "r")
  if file then
    file:close()
    vim.opt.shell = scoop_shims
    vim.opt.shellcmdflag = "-c"
  end
end
