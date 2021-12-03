local M = {}

M.hi_groups = {
  TSDanger = {at = 'bold,reverse', fg = 8},
  TSNote = {at = 'bold,reverse', fg = 12},
  -- NOTE: `TSWarning` links to `Todo` by default.
}

M.init = function()
  require'sopa'.hi_groups(M.hi_groups)
end

return M
