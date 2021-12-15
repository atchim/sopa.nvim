local M = {}

M.groups = {
  TSDanger = {at = 'bold,reverse', fg = 8},
  TSNote = {at = 'bold,reverse', fg = 12},
  -- NOTE: `TSWarning` links to `Todo` by default.
}

M.hi = function()
  require'sopa'.hi_groups(M.groups)
end

return M
