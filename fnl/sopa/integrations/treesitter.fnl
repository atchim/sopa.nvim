(import-macros {: ix} :fnl.sopa.palette {: modcall} :soupmacs.soupmacs)
(local M {})

(set M.groups
  { "@text.danger" {:fg (ix 8) :bold true :reverse true}
    "@text.note" {:fg (ix 12) :bold true :reverse true}
    "@text.warning" {:fg (ix 9) :bold true :reverse true}})

(fn M.init [] (modcall :sopa :hi_groups M.groups))

M
