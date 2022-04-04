(import-macros {: hex} :fnl.sopa.palette)

(local groups
  { :BufferLineBackground {:bg (hex 2) :fg (hex 6)}
    :BufferLineBufferSelected {:bg (hex 0) :fg (hex 7) :bold true :italic true}
    :BufferLineBufferVisible {:bg (hex 0) :fg (hex 6) :bold true :italic true}
    :BufferLineCloseButton {:bg (hex 2) :fg (hex 8) :bold true}
    :BufferLineCloseButtonSelected {:bg (hex 0) :fg (hex 8) :bold true}
    :BufferLineCloseButtonVisible {:bg (hex 0) :fg (hex 8) :bold true}
    :BufferLineDiagnostic {:bg (hex 2) :fg (hex 9) :bold true :italic true}
    :BufferLineDiagnosticSelected
      {:bg (hex 0) :fg (hex 9) :bold true :italic true}
    :BufferLineDiagnosticVisible
      {:bg (hex 0) :fg (hex 9) :bold true :italic true}
    :BufferLineDuplicate {:bg (hex 2) :fg (hex 6) :italic true}
    :BufferLineDuplicateSelected {:bg (hex 0) :fg (hex 7) :italic true}
    :BufferLineDuplicateVisible {:bg (hex 0) :fg (hex 6) :italic true}
    :BufferLineError {:bg (hex 2) :fg (hex 8) :bold true :italic true}
    :BufferLineErrorDiagnostic
      {:bg (hex 2) :fg (hex 8) :bold true :italic true}
    :BufferLineErrorDiagnosticSelected
      {:bg (hex 0) :fg (hex 8) :bold true :italic true}
    :BufferLineErrorDiagnosticVisible
      {:bg (hex 0) :fg (hex 8) :bold true :italic true}
    :BufferLineErrorSelected {:bg (hex 0) :fg (hex 8) :bold true :italic true}
    :BufferLineErrorVisible {:bg (hex 0) :fg (hex 8) :bold true :italic true}
    :BufferLineFill {:bg (hex 1)}
    :BufferLineHint {:bg (hex 2) :fg (hex 9) :bold true :italic true}
    :BufferLineHintDiagnostic {:bg (hex 2) :fg (hex 9) :bold true :italic true}
    :BufferLineHintDiagnosticSelected
      {:bg (hex 0) :fg (hex 9) :bold true :italic true}
    :BufferLineHintDiagnosticVisible
      {:bg (hex 0) :fg (hex 9) :bold true :italic true}
    :BufferLineHintSelected {:bg (hex 0) :fg (hex 9) :bold true :italic true}
    :BufferLineHintVisible {:bg (hex 0) :fg (hex 9) :bold true :italic true}
    :BufferLineIndicatorSelected {:bg (hex 0) :fg (hex 7) :bold true}
    :BufferLineInfo {:bg (hex 2) :fg (hex 11) :bold true :italic true}
    :BufferLineInfoDiagnostic
      {:bg (hex 2) :fg (hex 11) :bold true :italic true}
    :BufferLineInfoDiagnosticSelected
      {:bg (hex 0) :fg (hex 11) :bold true :italic true}
    :BufferLineInfoDiagnosticVisible
      {:bg (hex 0) :fg (hex 11) :bold true :italic true}
    :BufferLineInfoSelected {:bg (hex 0) :fg (hex 11) :bold true :italic true}
    :BufferLineInfoVisible {:bg (hex 0) :fg (hex 11) :bold true :italic true}
    :BufferLineModified {:bg (hex 2) :fg (hex 11)}
    :BufferLineModifiedSelected {:bg (hex 0) :fg (hex 11)}
    :BufferLineModifiedVisible {:bg (hex 0) :fg (hex 11)}
    :BufferLinePick {:bg (hex 2) :fg (hex 12) :bold true :italic true}
    :BufferLinePickSelected {:bg (hex 0) :fg (hex 12) :bold true :italic true}
    :BufferLinePickVisible {:bg (hex 0) :fg (hex 12) :bold true :italic true}
    :BufferLineSeparator {:bg (hex 1) :fg (hex 1)}
    :BufferLineSeparatorSelected {:bg (hex 1) :fg (hex 1)}
    :BufferLineSeparatorVisible {:bg (hex 1) :fg (hex 1)}
    :BufferLineTab {:bg (hex 2) :fg (hex 6)}
    :BufferLineTabClose {:bg (hex 1) :fg (hex 8) :bold true}
    :BufferLineTabSelected {:bg (hex 0) :fg (hex 7) :bold true}
    :BufferLineWarning {:bg (hex 2) :fg (hex 10) :bold true :italic true}
    :BufferLineWarningDiagnostic
      {:bg (hex 2) :fg (hex 10) :bold true :italic true}
    :BufferLineWarningDiagnosticSelected
      {:bg (hex 0) :fg (hex 10) :bold true :italic true}
    :BufferLineWarningDiagnosticVisible
      {:bg (hex 0) :fg (hex 10) :bold true :italic true}
    :BufferLineWarningSelected
      {:bg (hex 0) :fg (hex 10) :bold true :italic true}
    :BufferLineWarningVisible
      {:bg (hex 0) :fg (hex 10) :bold true :italic true}})

(fn setup []
  "Setup colors for `bufferline.nvim` plugin."
  (let [{: hi_groups} (require :sopa)]
    (hi_groups groups)))

{: groups : setup}
