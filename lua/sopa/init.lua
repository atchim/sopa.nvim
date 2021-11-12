--- Sopa de Mamaco - Uma Delícia
local M = {}

--- Attempt to highlight groups.
---
--- If `termguicolors` is not set, no changes will occur.
---
--- This function will attempt to highlight groups from the `sopa.default` and
--- `sopa.term` modules.
M.init = function()
  local cmd = vim.cmd
  if not vim.opt.termguicolors:get() then
    cmd[[echoerr "'termguicolors' is not set"]]
    return
  end

  cmd'hi clear'
  if vim.fn.exists'syntax_on' then cmd'syntax reset' end
  vim.g.colors_name = 'sopa'

  M.hi_groups(require'sopa.default'.groups)
  require'sopa.term'.init()
end

--- Helper function to highlight a group with colors from this palette.
---
--- If `prop` is a string, `group` will be linked to `prop`. Otherwise, if it
--- is a table, it may contain the following fields:
---   - `at`: A string which is a coma-separated list of attributes.
---   - `bg`: The palette index for the background color.
---   - `fg`: The palette index for the foreground color.
---   - `sp`: The palette color index for the `guisp` highlight argument.
--- @param group string The group name.
--- @param prop string|table The link group or highlight properties.
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

  local palette = M.palette

  cmd(
    'hi '..group
    ..' gui='..prop.at
    ..' guibg='..palette[prop.bg]
    ..' guifg='..palette[prop.fg]
    ..' guisp='..palette[prop.sp]
  )
end

--- Helper function to highlight groups.
---
--- `groups` must be a table which its fields stands for the name of the group
--- to be highlighted and the value of each field stands for the `prop`
--- parameter of the function `hi` from module `sopa`.
--- @param groups table The group table.
M.hi_groups = function(groups)
  for group, prop in pairs(groups) do M.hi(group, prop) end
end

--- Palette containing the colors used in this color scheme.
---
--- Each color may be accessed through its index, which ranges from -1 to 15
--- where:
---   - -1 is the index of the `NONE` attribute.
---   - 0 up to 7 are the indexes of the background colors sorted by its
---     lightness.
---   - 8 up to 15 are the indexes of the foreground colors sorted by its HUE.
M.palette = {
	[-1] = 'NONE',
	[0] = '#080808', -- Black
	[1] = '#0c0c0c', -- Gray 0C
	[2] = '#121212', -- Gray 12
	[3] = '#1a1a1a', -- Gray 1A
	[4] = '#252525', -- Gray 25
	[5] = '#383838', -- Gray 38
	[6] = '#5a5a5a', -- Gray 5A
	[7] = '#959595', -- White
	[8] = '#ff5b5b', -- Red
	[9] = '#bc8f05', -- Orange
	[10] = '#54a900', -- Yellow
	[11] = '#00ad2b', -- Green
	[12] = '#00a7a7', -- Cyan
	[13] = '#6b90ff', -- Blue
	[14] = '#ba74ff', -- Purple
	[15] = '#fc4ad0', -- Magenta
}

return M
