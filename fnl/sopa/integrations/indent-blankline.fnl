(import-macros {: ix} :fnl.sopa.palette {: modcall} :soupmacs.soupmacs)
(local M {})

(set M.groups
  { :IndentBlanklineChar {:fg (ix 2) :nocombine true}
    :IndentBlanklineContextChar {:fg (ix 5) :nocombine true}
    :IndentBlanklineContextStart {:sp (ix 5) :underline true}
    :IndentBlanklineSpaceCharBlankline {:link :IndentBlanklineChar}})

(fn M.init [] (modcall :sopa :hi_groups M.groups))

M
