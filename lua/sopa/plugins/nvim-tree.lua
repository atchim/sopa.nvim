local groups = {NvimTreeWindowPicker = {bg = "#121212", fg = "#959595", bold = true}}
local function setup()
  local _local_1_ = require("sopa")
  local hi_groups = _local_1_["hi_groups"]
  return hi_groups(groups)
end
return {groups = groups, setup = setup}
