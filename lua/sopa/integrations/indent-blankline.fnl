(import-macros pal :lua.sopa.palette {: modcall} :soupmacs.soupmacs)
(local M {})

(set M.groups
  { :IndentBlanklineChar {:fg (pal 2) :nocombine true}
    :IndentBlanklineContextChar {:fg (pal 5) :nocombine true}
    :IndentBlanklineContextStart {:sp (pal 5) :underline true}
    :IndentBlanklineSpaceCharBlankline {:link :IndentBlanklineChar}})

(fn M.init [] (modcall :sopa :hi_groups M.groups))

M
