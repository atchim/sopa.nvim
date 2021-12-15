local M = {}

M.groups = {
  NvimTreeWindowPicker = {at = 'bold', bg = 2, fg = 7},
}

M.hi = function()
  require'sopa'.hi_groups(M.groups)
end

return M
