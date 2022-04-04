(import-macros {: hex} :fnl.sopa.palette)

(local groups
  { :CopilotAnnotation {:fg (hex 5) :bold true}
    :CopilotSuggestion :Comment})

(fn setup []
  "Setup colors for `copilot.vim` plugin."
  (let [{: hi_groups} (require :sopa)]
    (hi_groups groups)))

{: groups : setup}
