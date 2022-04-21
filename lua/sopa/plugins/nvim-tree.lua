local groups = {NvimTreeWindowPicker = {bg = "#121212", fg = "#959595", bold = true}}
local function init()
  return (require("sopa")).hi_groups(groups)
end
return {groups = groups, init = init}
