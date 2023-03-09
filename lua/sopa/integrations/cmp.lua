local groups = {CmpItemKindConstant = {fg = "#bc8f05", bold = true}, CmpItemKindValue = {link = "CmpItemKindConstant"}, CmpItemKindVariable = {fg = "#6b90ff", bold = true}, CmpItemKindConstructor = {link = "CmpItemKindMethod"}, CmpItemKindField = {link = "CmpItemKindVariable"}, CmpItemKindFunction = {link = "CmpItemKindVariable"}, CmpItemKindMethod = {link = "CmpItemKindFunction"}, CmpItemKindProperty = {link = "CmpItemKindField"}, CmpItemAbbrMatch = {fg = "#54a900", bold = true}, CmpItemAbbrMatchFuzzy = {fg = "#ba74ff", bold = true}, CmpItemKindKeyword = {fg = "#fc4ad0", bold = true}, CmpItemKindOperator = {link = "CmpItemKindKeyword"}, CmpItemKindTypeParamter = {fg = "#ba74ff", bold = true}, CmpItemKindClass = {link = "CmpItemKindStruct"}, CmpItemKindEnum = {link = "CmpItemKindTypeParamter"}, CmpItemKindEnumMember = {link = "CmpItemKindEnum"}, CmpItemKindInterface = {link = "CmpItemKindClass"}, CmpItemKindReference = {link = "CmpItemKindTypeParamter"}, CmpItemKindStruct = {link = "CmpItemKindTypeParamter"}, CmpItemKindUnit = {link = "CmpItemKindTypeParamter"}, CmpItemAbbrDeprecated = {strikethrough = true}, CmpItemKindColor = {fg = "#00a7a7", bold = true}, CmpItemKindEvent = {fg = "#54a900", bold = true}, CmpItemKindFile = {fg = "#ba74ff", bold = true}, CmpItemKindFolder = {fg = "#fc4ad0", bold = true}, CmpItemKindModule = {fg = "#ff5b5b", bold = true}, CmpItemKindText = {fg = "#00ad2b", bold = true}, CmpItemKindSnippet = {fg = "#00a7a7", bold = true}}
local function setup()
  local hi = vim.api.nvim_set_hl
  for group, args in pairs(groups) do
    hi(0, group, args)
  end
  return nil
end
return {groups = groups, setup = setup}
