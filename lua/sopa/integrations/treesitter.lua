local groups = {["@text.danger"] = {fg = "#ff5b5b", bold = true, reverse = true}, ["@text.note"] = {fg = "#00a7a7", bold = true, reverse = true}, ["@text.warning"] = {fg = "#bc8f05", bold = true, reverse = true}, ["@variable"] = {link = "Identifier"}}
local function setup()
  local hi = vim.api.nvim_set_hl
  for group, args in pairs(groups) do
    hi(0, group, args)
  end
  return nil
end
return {groups = groups, setup = setup}
