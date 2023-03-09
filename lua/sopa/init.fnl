(import-macros {: modcall} :soupmacs.soupmacs)

(local {: groups : terminal_colors} (require :sopa.builtin))
(local {: config : reset} (require :sopa.config))
(local {: settings} (require :sopa.config.utils))

(local cmd vim.cmd)
(local g vim.g)

(fn setup [?config]
  "Sets up the color scheme with optional `?config`."

  (assert (vim.opt.termguicolors:get) "sopa: 'termguicolors' not set")
  (cmd "hi clear")
  (when (vim.fn.exists :syntax) (cmd "syntax reset"))
  (set g.colors_name :sopa)

  (local hi vim.api.nvim_set_hl)
  (each [group args (pairs groups)] (hi 0 group args))

  (when ?config (reset ?config))

  (when config.terminal_colors
    (each [name color (pairs terminal_colors)] (tset g name color)))

  (each [integration true? (settings config.integrations)]
    (when true? (modcall (.. :sopa.integrations. integration) :setup [])))

  (each [group args (pairs config.custom_groups)] (hi 0 group args)))

{: setup}
