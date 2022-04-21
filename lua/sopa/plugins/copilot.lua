local groups = {CopilotAnnotation = {fg = "#383838", bold = true}, CopilotSuggestion = "Comment"}
local function init()
  return (require("sopa")).hi_groups(groups)
end
return {groups = groups, init = init}
