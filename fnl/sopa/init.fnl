(import-macros {: call} :fnl.sopa.macros)
(local api vim.api)
(local cmd vim.cmd)

(fn hi_groups [groups]
  "Highlight groups.

  `groups` must be a table in which each key is a group name and the value may
  be a table or a string. If the value is a table, it will be used as the `val`
  parameter for the function `vim.api.nvim_set_hl`. If the value is a string,
  the group name will be linked to the value."

  (each [group prop (pairs groups)]
    (local t (type prop))
    (match t
      ; TODO: Make it less gross when API be more consistent.
      :string (cmd (.. "hi! link " group " " prop))
      :table (api.nvim_set_hl 0 group prop)
      _ (error (.. "invalid group property type: " t)))))

(fn init []
  "Load color scheme."

  ; Do technical stuff.
  (assert (vim.opt.termguicolors:get) "`termguicolors` not set")
  (cmd "hi clear")
  (when (vim.fn.exists :syntax) (cmd "syntax reset"))
  (set vim.g.colors_name :sopa)

  ; Set vanilla colors.
  (let [{: groups : term_colors} (require :sopa.vanilla)]
    (hi_groups groups)
    (each [name color (pairs term_colors)]
      (tset vim.g name color)))

  ; Setup plugin stuff.
  (call :sopa.plugins :init))

{ : hi_groups
  : init}
