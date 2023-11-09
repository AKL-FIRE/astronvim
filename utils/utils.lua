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

function M.get_buf_parent_directory_relative_path()
  local current_buf = vim.api.nvim_get_current_buf()
  local current_buf_name = vim.api.nvim_buf_get_name(current_buf)
  local relative_path = vim.fn.fnamemodify(current_buf_name, ":~:.")
  local parent_directory = vim.fn.fnamemodify(relative_path, ":h")
  local parent_directory_name = vim.fn.fnamemodify(parent_directory, ":t")
  return parent_directory_name
end

return M
