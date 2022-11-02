(import-macros {: subcalls} :soupmacs.soupmacs)
(local M {})

(fn M.hi_groups [groups]
  (each [group prop (pairs groups)] (vim.api.nvim_set_hl 0 group prop)))

(fn M.init []
  "Loads the color scheme."
  (assert (vim.opt.termguicolors:get) "'termguicolors' not set")
  (vim.cmd "hi clear")
  (when (vim.fn.exists :syntax) (vim.cmd "syntax reset"))
  (set vim.g.colors_name :sopa)
  (subcalls :init :sopa :vanilla :integrations))

M
