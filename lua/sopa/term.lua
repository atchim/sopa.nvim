--- Module to set terminal colors.
local M = {}

--- Set the terminal color variables.
M.init = function()
  local g = vim.g
  local p = require'sopa'.palette
  for i, j in ipairs{0, 8, 11, 9, 13, 14, 12, 5, 2, 8, 11, 10, 13, 15, 12, 7}
  do g['terminal_color_'..i - 1] = p[j]
  end
end

return M
