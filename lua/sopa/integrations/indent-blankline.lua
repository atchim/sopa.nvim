local M = {}
M.groups = {IndentBlanklineChar = {fg = "#121212", nocombine = true}, IndentBlanklineContextChar = {fg = "#383838", nocombine = true}, IndentBlanklineContextStart = {sp = "#383838", underline = true}, IndentBlanklineSpaceCharBlankline = {link = "IndentBlanklineChar"}}
M.init = function()
  return (require("sopa")).hi_groups(M.groups)
end
return M
