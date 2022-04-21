(import-macros
  {: call} :fnl.sopa.macros
  {: hex} :fnl.sopa.palette)

(local groups
  { :CopilotAnnotation {:fg (hex 5) :bold true}
    :CopilotSuggestion :Comment})

(fn init []
  "Setup highlight groups."
  (call :sopa :hi_groups groups))

{ : groups
  : init}
