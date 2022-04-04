(local api vim.api)
(local cmd vim.cmd)

(fn hi-groups [groups]
  "Highlight groups.

  `groups` must be a table in which each key is a group name and the value may
  be a table or a string. If the value is a table, it will be used as the `val`
  parameter for the function `vim.api.nvim_set_hl`. If the value is a string,
  the group name will be linked to the value."

  (each [group prop (pairs groups)]
    (let [t (type prop)]
      (match t
        ; TODO: Make it less gross when API be more consistent.
        :string (cmd (.. "hi! link " group " " prop))
        :table (api.nvim_set_hl 0 group prop)
        _ (error (.. "invalid group property type: " t))))))

(fn load-color-scheme []
  "Load color scheme."

  (when (not (vim.opt.termguicolors:get)) (error "`termguicolors` not set"))
  (cmd "hi clear")
  (when (vim.fn.exists :syntax) (cmd "syntax reset"))
  (set vim.g.colors_name :sopa)

  (let [{: groups : term_colors} (require :sopa.vanilla)]
    (hi-groups groups)
    (each [var- color (pairs term_colors)] (tset vim.g var- color)))

  (let [config (require :sopa.config)]
    (each [plugin _ (pairs (. config :enabled_plugins))]
      (let [{: setup} (require (.. :sopa.plugins. plugin))]
        (setup)))))

{:hi_groups hi-groups :load_color_scheme load-color-scheme}
