local M = {}
M.groups = {LeapLabelPrimary = {bg = "#54a900", fg = "#080808", bold = true}, LeapLabelSecondary = {bg = "#ba74ff", fg = "#080808", bold = true}, LeapMatch = {bold = true, underline = true}}
M.init = function()
  vim.api.nvim_create_augroup("sopa_integration_leap", {})
  local function _1_()
    if (vim.g.colors_name == "sopa") then
      local _let_2_ = require("sopa")
      local hi_groups = _let_2_["hi_groups"]
      return hi_groups(M.groups)
    else
      return vim.api.nvim_del_augroup_by_name("sopa_integration_leap")
    end
  end
  return vim.api.nvim_create_autocmd("User", {pattern = "LeapEnter", desc = "Highlights groups for Leap.", group = "sopa_integration_leap", callback = _1_})
end
return M
