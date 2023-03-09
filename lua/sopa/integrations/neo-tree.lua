local groups = {NeoTreeDimText = {link = "NonText"}, NeoTreeGitAdded = {link = "diffAdded"}, NeoTreeGitConflict = {link = "NeoTreeGitModified"}, NeoTreeGitDeleted = {link = "diffRemoved"}, NeoTreeGitIgnored = {link = "Comment"}, NeoTreeGitModified = {fg = "#54a900"}, NeoTreeGitUntracked = {fg = "#bc8f05"}, NeoTreeGitRenamed = {fg = "#00a7a7"}, NeoTreeModified = {link = "NeoTreeGitModified"}, NeoTreeRootName = {fg = "#ba74ff", bold = true}, NeoTreeTitleBar = {bg = "#1a1a1a", fg = "#00a7a7", bold = true}}
local function setup()
  local hi = vim.api.nvim_set_hl
  for group, args in pairs(groups) do
    hi(0, group, args)
  end
  return nil
end
return {groups = groups, setup = setup}
