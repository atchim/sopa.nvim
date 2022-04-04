local api = vim.api
local groups = {LeapLabelPrimary = {bg = "#54a900", fg = "#080808", bold = true}, LeapLabelSecounary = {bg = "#ba74ff", fg = "#080808", bold = true}, LeapMatch = {bold = true, underline = true}}
local function setup()
  local group = api.nvim_create_augroup("sopa_leap", {})
  local function _1_()
    local _let_2_ = require("sopa")
    local hi_groups = _let_2_["hi_groups"]
    return hi_groups(groups)
  end
  return api.nvim_create_autocmd("User", {group = group, pattern = "LeapEnter", desc = "Highlight groups for Leap", callback = _1_})
end
return {groups = groups, setup = setup}
