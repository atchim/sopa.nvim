local M = {}
M.groups = {["@text.danger"] = {fg = "#ff5b5b", bold = true, reverse = true}, ["@text.note"] = {fg = "#00a7a7", bold = true, reverse = true}, ["@text.warning"] = {fg = "#bc8f05", bold = true, reverse = true}}
M.init = function()
  return (require("sopa")).hi_groups(M.groups)
end
return M
