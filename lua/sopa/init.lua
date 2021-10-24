local M = {}

M.hi = function(group, prop)
  local cmd = vim.cmd

  if type(prop) == 'string' then
    cmd('hi! link '..group..' '..prop)
    return
  end

  prop = vim.tbl_deep_extend(
    'force',
    {at = 'NONE', bg = -1, fg = -1, sp = -1},
    prop
  )

  if prop.sp ~= -1 and vim.fn.has'gui_running' == 0 then
    prop.fg = prop.sp
    prop.sp = -1
  end

  local pal = require'sopa.pal'

  cmd(
    'hi '..group
    ..' gui='..prop.at
    ..' guibg='..pal[prop.bg]
    ..' guifg='..pal[prop.fg]
    ..' guisp='..pal[prop.sp]
  )
end

M.hi_groups = function(groups)
  for group, prop in pairs(groups) do M.hi(group, prop) end
end

M.setup = function()
  local cmd = vim.cmd
  if not vim.opt.termguicolors:get() then
    cmd[[echoerr "'termguicolors' is not set"]]
    return
  end

  cmd'hi clear'
  if vim.fn.exists'syntax_on' then cmd'syntax reset' end
  vim.g.colors_name = 'sopa'

  M.hi_groups(require'sopa.def')
  require'sopa.term'.setup()
end

return M
