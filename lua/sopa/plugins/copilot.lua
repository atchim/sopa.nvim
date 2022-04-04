local groups = {CopilotAnnotation = {fg = "#383838", bold = true}, CopilotSuggestion = "Comment"}
local function setup()
  local _let_1_ = require("sopa")
  local hi_groups = _let_1_["hi_groups"]
  return hi_groups(groups)
end
return {groups = groups, setup = setup}
