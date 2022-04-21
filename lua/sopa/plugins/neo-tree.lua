local groups = {NeoTreeDimText = "NonText", NeoTreeGitAdded = "diffAdded", NeoTreeGitConflict = "NeoTreeGitModified", NeoTreeGitDeleted = "diffRemoved", NeoTreeGitIgnored = "Comment", NeoTreeGitModified = {fg = "#54a900"}, NeoTreeGitUntracked = {fg = "#bc8f05"}, NeoTreeGitRenamed = {fg = "#00a7a7"}, NeoTreeModified = "NeoTreeGitModified", NeoTreeRootName = {fg = "#ba74ff", bold = true}}
local function init()
  return (require("sopa")).hi_groups(groups)
end
return {groups = groups, init = init}
