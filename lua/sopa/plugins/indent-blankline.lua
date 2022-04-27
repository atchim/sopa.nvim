local groups = {IndentBlanklineChar = {fg = "#121212", nocombine = true}, IndentBlanklineContextChar = {fg = "#383838", nocombine = true}, IndentBlanklineContextStart = {sp = "#383838", underline = true}, IndentBlanklineSpaceCharBlankline = "IndentBlanklineChar"}
local function init()
  return (require("sopa")).hi_groups(groups)
end
return {groups = groups, init = init}
