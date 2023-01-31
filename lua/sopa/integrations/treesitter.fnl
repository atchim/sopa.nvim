(import-macros pal :lua.sopa.palette {: modcall} :soupmacs.soupmacs)
(local M {})

(set M.groups
  { "@text.danger" {:fg (pal 8) :bold true :reverse true}
    "@text.note" {:fg (pal 12) :bold true :reverse true}
    "@text.warning" {:fg (pal 9) :bold true :reverse true}})

(fn M.init []
  "Highlights grousp for Nvim Tree-Sitter."
  (modcall :sopa :hi_groups M.groups))

M
