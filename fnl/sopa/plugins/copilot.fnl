; Configurations for Copilot, the GitHub Copilot plugin.
; https://github.com/github/copilot.vim

(import-macros {: hex} :fnl.sopa.palette)

(local groups
  { :CopilotAnnotation {:fg (hex 5) :bold true}
    :CopilotSuggestion :Comment})

(fn setup []
  "Setup highlight groups."
  (local {: hi_groups} (require :sopa))
  (hi_groups groups))

{ : groups
  : setup}
