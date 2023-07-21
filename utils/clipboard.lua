local M = {}

-- wsl clipboard config
function M.set_wsl_clipboard()
  local g = vim.g
  local get_os = require("user.utils.utils").get_os
  if get_os() == "linux-wsl" then
    local clipboard = {}
    local copy = {}
    copy["+"] = "clip.exe"
    copy["*"] = "clip.exe"
    local paste = {}
    paste["+"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))'
    paste["*"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))'
    clipboard["name"] = "'WslClipboard'"
    clipboard["copy"] = copy
    clipboard["paste"] = paste
    clipboard["cache_enabled"] = 0
    g.clipboard = clipboard
  end
end

return M
