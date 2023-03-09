local groups = {LeapLabelPrimary = {bg = "#54a900", fg = "#080808", bold = true}, LeapLabelSecondary = {bg = "#ba74ff", fg = "#080808", bold = true}, LeapMatch = {bold = true, underline = true}}
local function setup()
  local hi = vim.api.nvim_set_hl
  for group, args in pairs(groups) do
    hi(0, group, args)
  end
  return nil
end
return {groups = groups, setup = setup}
