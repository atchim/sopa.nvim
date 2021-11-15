--- The stuff required to set the `sopa` color scheme for the `bufferline.nvim`
--- plugin.
---
--- ```lua
--- -- Usage Example
--- require'bufferline'.setup{
---   highlights = require'sopa.bufferline'.groups,
--- }
--- ```
local M = {}

--- Helper function to return the highlight value for groups used by
--- `bufferline.nvim`.
---
--- The highlight value returned by this function contains colors from this
--- palette.
---
--- `t` may have the following fields:
---   - `at`: A string which is a coma-separated list of attributes.
---   - `bg`: The palette index for the background color.
---   - `fg`: The palette index for the foreground color.
---   - `sp`: The palette color index for the `guisp` highlight argument.
--- @param t table A table with the highlight properties.
--- @return table hi_val The highlight value for `bufferline.nvim` groups.
M.hi_val = function(t)
  local p = require'sopa'.palette
  t = vim.tbl_deep_extend('force', {at = 'NONE', bg = -1, fg = -1, sp = -1}, t)
  return {gui = t.at, guibg = p[t.bg], guifg = p[t.fg], guisp = p[t.sp]}
end

--- The table containing the groups to highlight `bufferline.nvim`.
---
--- This may be used as value for the `highlights` field in the table passed as
--- argument to the `setup` function from the `bufferline` module.
M.groups = {
  background = M.hi_val{bg = 2, fg = 6},
  buffer_selected = M.hi_val{at = 'bold,italic', bg = 0, fg = 7},
  buffer_visible = M.hi_val{at = 'bold,italic', bg = 0, fg = 6},
  close_button = M.hi_val{at = 'bold', bg = 2, fg = 8},
  close_button_selected = M.hi_val{at = 'bold', bg = 0, fg = 8},
  close_button_visible = M.hi_val{at = 'bold', bg = 0, fg = 8},
  diagnostic = M.hi_val{at = 'bold,italic', bg = 2, fg = 9},
  diagnostic_selected = M.hi_val{at = 'bold,italic', bg = 0, fg = 9},
  diagnostic_visible = M.hi_val{at = 'bold,italic', bg = 0, fg = 9},
  duplicate = M.hi_val{at = 'italic', bg = 2, fg = 6},
  duplicate_selected = M.hi_val{at = 'italic', bg = 0, fg = 7},
  duplicate_visible = M.hi_val{at = 'italic', bg = 0, fg = 6},
  error = M.hi_val{at = 'bold,italic', bg = 2, fg = 8},
  error_diagnostic = M.hi_val{at = 'bold,italic', bg = 2, fg = 8},
  error_diagnostic_selected = M.hi_val{at = 'bold,italic', bg = 0, fg = 8},
  error_diagnostic_visible = M.hi_val{at = 'bold,italic', bg = 0, fg = 8},
  error_selected = M.hi_val{at = 'bold,italic', bg = 0, fg = 8},
  error_visible = M.hi_val{at = 'bold,italic', bg = 0, fg = 8},
  fill = M.hi_val{bg = 1},
  indicator_selected = M.hi_val{at = 'bold', bg = 0, fg = 7},
  info = M.hi_val{at = 'bold,italic', bg = 2, fg = 11},
  info_diagnostic = M.hi_val{at = 'bold,italic', bg = 2, fg = 11},
  info_diagnostic_selected = M.hi_val{at = 'bold,italic', bg = 0, fg = 11},
  info_diagnostic_visible = M.hi_val{at = 'bold,italic', bg = 0, fg = 11},
  info_selected = M.hi_val{at = 'bold,italic', bg = 0, fg = 11},
  info_visible = M.hi_val{at = 'bold,italic', bg = 0, fg = 11},
  modified = M.hi_val{bg = 2, fg = 11},
  modified_selected = M.hi_val{bg = 0, fg = 11},
  modified_visible = M.hi_val{bg = 0, fg = 11},
  pick = M.hi_val{at = 'bold,italic', bg = 2, fg = 12},
  pick_selected = M.hi_val{at = 'bold,italic', bg = 0, fg = 12},
  pick_visible = M.hi_val{at = 'bold,italic', bg = 0, fg = 12},
  separator = M.hi_val{bg = 1, fg = 1},
  separator_selected = M.hi_val{bg = 1, fg = 1},
  separator_visible = M.hi_val{bg = 1, fg = 1},
  tab = M.hi_val{bg = 2, fg = 6},
  tab_close = M.hi_val{at = 'bold', bg = 1, fg = 8},
  tab_selected = M.hi_val{at = 'bold', bg = 0, fg = 7},
  warning = M.hi_val{at = 'bold,italic', bg = 2, fg = 10},
  warning_diagnostic = M.hi_val{at = 'bold,italic', bg = 2, fg = 10},
  warning_diagnostic_selected = M.hi_val{at = 'bold,italic', bg = 0, fg = 10},
  warning_diagnostic_visible = M.hi_val{at = 'bold,italic', bg = 0, fg = 10},
  warning_selected = M.hi_val{at = 'bold,italic', bg = 0, fg = 10},
  warning_visible = M.hi_val{at = 'bold,italic', bg = 0, fg = 10},
}

return M