--- Module to highlight groups for `nvim-treesitter`.
local M = {}

--- Highlight groups for `nvim-treesitter`.
M.init = function()
  require'sopa'.hi_groups(M.groups)
end

--- Highlight groups for `nvim-treesitter`.
M.groups = {
  TSDanger = {at = 'bold,reverse', fg = 8},
  TSNote = {at = 'bold,reverse', fg = 12},
  -- NOTE: `TSWarning` links to `Todo` by default.
}

return M
