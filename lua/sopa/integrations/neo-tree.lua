local M = {}
M.groups = {NeoTreeDimText = {link = "NonText"}, NeoTreeGitAdded = {link = "diffAdded"}, NeoTreeGitConflict = {link = "NeoTreeGitModified"}, NeoTreeGitDeleted = {link = "diffRemoved"}, NeoTreeGitIgnored = {link = "Comment"}, NeoTreeGitModified = {fg = "#54a900"}, NeoTreeGitUntracked = {fg = "#bc8f05"}, NeoTreeGitRenamed = {fg = "#00a7a7"}, NeoTreeModified = {link = "NeoTreeGitModified"}, NeoTreeRootName = {fg = "#ba74ff", bold = true}, NeoTreeTitleBar = {bg = "#1a1a1a", fg = "#00a7a7", bold = true}}
M.init = function()
  return (require("sopa")).hi_groups(M.groups)
end
return M
