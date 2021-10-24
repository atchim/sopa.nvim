local M = {}

M.setup = function()
  local g = vim.g
  local pal = require'sopa.pal'
  for i, j in ipairs{0, 8, 11, 9, 13, 14, 12, 5, 2, 8, 11, 10, 13, 15, 12, 7}
  do g['terminal_color_'..i - 1] = pal[j]
  end
end

return M
