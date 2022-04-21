(import-macros
  {: call} :fnl.sopa.macros
  {: hex} :fnl.sopa.palette)

(local groups
  {:NvimTreeWindowPicker {:bg (hex 2) :fg (hex 7) :bold true}})

(fn init []
  "Setup highlight groups."
  (call :sopa :hi_groups groups))

{ : groups
  : init}
