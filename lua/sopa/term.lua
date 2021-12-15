local M = {}

M.set_vars = function()
  local g = vim.g
  local palette = require'sopa'.palette
  local ls = {0, 8, 11, 9, 13, 14, 12, 5, 3, 8, 11, 10, 13, 15, 12, 7}

  for i, j in ipairs(ls) do
    g['terminal_color_'..i - 1] = palette[j]
  end
end

return M
