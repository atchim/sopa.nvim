local M = {}

M.groups = {
  CopilotAnnotation = {at = 'bold', fg = 5},
  CopilotSuggestion = 'Comment',
}

M.hi = function()
  require'sopa'.hi_groups(M.groups)
end

return M
