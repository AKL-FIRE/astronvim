local M = {}

-- get the os name {"mac" or "linux" or "win"}
function M.get_os()
  local os
  if vim.fn.has "mac" == 1 then
    os = "mac"
  elseif vim.fn.has "unix" == 1 then
    os = "linux"
    if vim.fn.has "wsl" == 1 then os = os .. "-wsl" end
  elseif vim.fn.has "win32" == 1 then
    os = "win"
  else
    require("astronvim.utils").notify("not valid os", vim.log.levels.ERROR)
  end
  return os
end

return M
