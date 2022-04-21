local api = vim.api
local cmd = vim.cmd
local function hi_groups(groups)
  for group, prop in pairs(groups) do
    local t = type(prop)
    local _1_ = t
    if (_1_ == "string") then
      cmd(("hi! link " .. group .. " " .. prop))
    elseif (_1_ == "table") then
      api.nvim_set_hl(0, group, prop)
    elseif true then
      local _ = _1_
      error(("invalid group property type: " .. t))
    else
    end
  end
  return nil
end
local function init()
  assert((vim.opt.termguicolors):get(), "`termguicolors` not set")
  cmd("hi clear")
  if vim.fn.exists("syntax") then
    cmd("syntax reset")
  else
  end
  vim.g.colors_name = "sopa"
  do
    local _let_4_ = require("sopa.vanilla")
    local groups = _let_4_["groups"]
    local term_colors = _let_4_["term_colors"]
    hi_groups(groups)
    for name, color in pairs(term_colors) do
      vim.g[name] = color
    end
  end
  return (require("sopa.plugins")).init()
end
return {hi_groups = hi_groups, init = init}
