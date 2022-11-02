local M = {}
M.hi_groups = function(groups)
  for group, prop in pairs(groups) do
    vim.api.nvim_set_hl(0, group, prop)
  end
  return nil
end
M.init = function()
  assert((vim.opt.termguicolors):get(), "'termguicolors' not set")
  vim.cmd("hi clear")
  if vim.fn.exists("syntax") then
    vim.cmd("syntax reset")
  else
  end
  vim.g.colors_name = "sopa"
  do end (require("sopa.vanilla")).init()
  return (require("sopa.integrations")).init()
end
return M
