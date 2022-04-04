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
local function load_color_scheme()
  if not (vim.opt.termguicolors):get() then
    error("`termguicolors` not set")
  else
  end
  cmd("hi clear")
  if vim.fn.exists("syntax") then
    cmd("syntax reset")
  else
  end
  vim.g.colors_name = "sopa"
  do
    local _let_5_ = require("sopa.vanilla")
    local groups = _let_5_["groups"]
    local term_colors = _let_5_["term_colors"]
    hi_groups(groups)
    for var_, color in pairs(term_colors) do
      vim.g[var_] = color
    end
  end
  local config = require("sopa.config")
  for plugin, _ in pairs(config.enabled_plugins) do
    local _let_6_ = require(("sopa.plugins." .. plugin))
    local setup = _let_6_["setup"]
    setup()
  end
  return nil
end
return {hi_groups = hi_groups, load_color_scheme = load_color_scheme}
