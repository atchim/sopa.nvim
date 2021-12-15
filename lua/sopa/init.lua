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

  cmd(
    'hi '..group
    ..' gui='..prop.at
    ..' guibg='..M.palette[prop.bg]
    ..' guifg='..M.palette[prop.fg]
    ..' guisp='..M.palette[prop.sp]
  )
end

M.hi_groups = function(groups)
  for group, prop in pairs(groups) do M.hi(group, prop) end
end

M.load = function()
  local cmd = vim.cmd
  if not vim.opt.termguicolors:get() then
    cmd[[echoerr "'termguicolors' is not set for 'sopa.nvim'"]]
    return
  end

  cmd'hi clear'
  if vim.fn.exists'syntax_on' then cmd'syntax reset' end
  vim.g.colors_name = 'sopa'

  M.hi_groups(require'sopa.builtin'.groups)
  require'sopa.term'.set_vars()
end

M.palette = {
  [-1] = 'NONE',
  [0] = '#080808',
  [1] = '#0c0c0c',
  [2] = '#121212',
  [3] = '#1a1a1a',
  [4] = '#252525',
  [5] = '#383838',
  [6] = '#5a5a5a',
  [7] = '#959595',
  [8] = '#ff5b5b',
  [9] = '#bc8f05',
  [10] = '#54a900',
  [11] = '#00ad2b',
  [12] = '#00a7a7',
  [13] = '#6b90ff',
  [14] = '#ba74ff',
  [15] = '#fc4ad0',
}

return M
