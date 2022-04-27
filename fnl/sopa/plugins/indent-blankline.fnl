(import-macros
  {: call} :fnl.sopa.macros
  {: hex} :fnl.sopa.palette)

(local groups
  { :IndentBlanklineChar {:fg (hex 2) :nocombine true}
    :IndentBlanklineContextChar {:fg (hex 5) :nocombine true}
    :IndentBlanklineContextStart :IndentBlanklineContextChar
    :IndentBlanklineSpaceCharBlankline :IndentBlanklineChar})

(fn init []
  "Setup highlight groups."
  (call :sopa :hi_groups groups))

{ : groups
  : init}