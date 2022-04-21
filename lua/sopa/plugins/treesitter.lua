local groups = {TSDanger = {fg = "#ff5b5b", bold = true, reverse = true}, TSNote = {fg = "#00a7a7", bold = true, reverse = true}}
local function init()
  return (require("sopa")).hi_groups(groups)
end
return {groups = groups, init = init}
