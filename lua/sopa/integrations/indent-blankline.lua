local groups = {IndentBlanklineChar = {fg = "#121212", nocombine = true}, IndentBlanklineContextChar = {fg = "#383838", nocombine = true}, IndentBlanklineContextStart = {sp = "#383838", underline = true}, IndentBlanklineSpaceCharBlankline = {link = "IndentBlanklineChar"}}
local function setup()
  local hi = vim.api.nvim_set_hl
  for group, args in pairs(groups) do
    hi(0, group, args)
  end
  return nil
end
return {groups = groups, setup = setup}
