local groups = {LeapLabelPrimary = {bg = "#54a900", fg = "#080808", bold = true}, LeapLabelSecondary = {bg = "#ba74ff", fg = "#080808", bold = true}, LeapMatch = {bold = true, underline = true}}
local function setup()
  local api = vim.api
  api.nvim_create_augroup("sopa_leap", {})
  local function _1_()
    if ("sopa" == vim.g.colors_name) then
      local _let_2_ = require("sopa")
      local hi_groups = _let_2_["hi_groups"]
      return hi_groups(groups)
    else
      return vim.api.nvim_del_augroup_by_name("sopa_leap")
    end
  end
  return api.nvim_create_autocmd("User", {group = "sopa_leap", pattern = "LeapEnter", desc = "Highlight groups for Leap.", callback = _1_})
end
return {groups = groups, setup = setup}
