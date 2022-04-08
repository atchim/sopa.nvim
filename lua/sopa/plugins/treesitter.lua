local groups = {TSDanger = {fg = "#ff5b5b", bold = true, reverse = true}, TSNote = {fg = "#00a7a7", bold = true, reverse = true}}
local function setup()
  local _local_1_ = require("sopa")
  local hi_groups = _local_1_["hi_groups"]
  return hi_groups(groups)
end
return {groups = groups, setup = setup}
