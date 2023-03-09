local _local_1_ = require("sopa.builtin")
local groups = _local_1_["groups"]
local terminal_colors = _local_1_["terminal_colors"]
local _local_2_ = require("sopa.config")
local config = _local_2_["config"]
local reset = _local_2_["reset"]
local _local_3_ = require("sopa.config.utils")
local settings = _local_3_["settings"]
local cmd = vim.cmd
local g = vim.g
local function setup(_3fconfig)
  assert((vim.opt.termguicolors):get(), "sopa: 'termguicolors' not set")
  cmd("hi clear")
  if vim.fn.exists("syntax") then
    cmd("syntax reset")
  else
  end
  g.colors_name = "sopa"
  local hi = vim.api.nvim_set_hl
  for group, args in pairs(groups) do
    hi(0, group, args)
  end
  if _3fconfig then
    reset(_3fconfig)
  else
  end
  if config.terminal_colors then
    for name, color in pairs(terminal_colors) do
      g[name] = color
    end
  else
  end
  for integration, true_3f in settings(config.integrations) do
    if true_3f then
      do end (require(("sopa.integrations." .. integration))).setup()
    else
    end
  end
  for group, args in pairs(config.custom_groups) do
    hi(0, group, args)
  end
  return nil
end
return {setup = setup}
