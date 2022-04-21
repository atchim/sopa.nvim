(import-macros
  {: call} :fnl.sopa.macros
  {: hex} :fnl.sopa.palette)

(local groups
  { :TSDanger {:fg (hex 8) :bold true :reverse true}
    :TSNote {:fg (hex 12) :bold true :reverse true}})

(fn init []
  "Setup highlight groups."
  (call :sopa :hi_groups groups))

{ : groups
  : init}
