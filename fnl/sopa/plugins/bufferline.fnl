(import-macros
  {: call} :fnl.sopa.macros
  {: hex} :fnl.sopa.palette)

(local groups
  { :BufferLineBackground {:bg (hex 2) :fg (hex 6)}
    :BufferLineBufferSelected {:bg (hex 0) :fg (hex 7) :bold true}
    :BufferLineBufferVisible {:bg (hex 0) :fg (hex 6) :bold true}
    :BufferLineCloseButton {:bg (hex 2) :fg (hex 8) :bold true}
    :BufferLineCloseButtonSelected {:bg (hex 0) :fg (hex 8) :bold true}
    :BufferLineCloseButtonVisible {:bg (hex 0) :fg (hex 8) :bold true}
    :BufferLineDiagnostic {:bg (hex 2) :fg (hex 9) :bold true}
    :BufferLineDiagnosticSelected {:bg (hex 0) :fg (hex 9) :bold true}
    :BufferLineDiagnosticVisible {:bg (hex 0) :fg (hex 9) :bold true}
    :BufferLineDuplicate {:bg (hex 2) :fg (hex 6)}
    :BufferLineDuplicateSelected {:bg (hex 0) :fg (hex 7)}
    :BufferLineDuplicateVisible {:bg (hex 0) :fg (hex 6)}
    :BufferLineError {:bg (hex 2) :fg (hex 8) :bold true}
    :BufferLineErrorDiagnostic {:bg (hex 2) :fg (hex 8) :bold true}
    :BufferLineErrorDiagnosticSelected {:bg (hex 0) :fg (hex 8) :bold true}
    :BufferLineErrorDiagnosticVisible {:bg (hex 0) :fg (hex 8) :bold true}
    :BufferLineErrorSelected {:bg (hex 0) :fg (hex 8) :bold true}
    :BufferLineErrorVisible {:bg (hex 0) :fg (hex 8) :bold true}
    :BufferLineFill {:bg (hex 1)}
    :BufferLineHint {:bg (hex 2) :fg (hex 9) :bold true}
    :BufferLineHintDiagnostic {:bg (hex 2) :fg (hex 9) :bold true}
    :BufferLineHintDiagnosticSelected {:bg (hex 0) :fg (hex 9) :bold true}
    :BufferLineHintDiagnosticVisible {:bg (hex 0) :fg (hex 9) :bold true}
    :BufferLineHintSelected {:bg (hex 0) :fg (hex 9) :bold true}
    :BufferLineHintVisible {:bg (hex 0) :fg (hex 9) :bold true}
    :BufferLineIndicatorSelected {:bg (hex 0) :fg (hex 7) :bold true}
    :BufferLineInfo {:bg (hex 2) :fg (hex 11) :bold true}
    :BufferLineInfoDiagnostic {:bg (hex 2) :fg (hex 11) :bold true}
    :BufferLineInfoDiagnosticSelected {:bg (hex 0) :fg (hex 11) :bold true}
    :BufferLineInfoDiagnosticVisible {:bg (hex 0) :fg (hex 11) :bold true}
    :BufferLineInfoSelected {:bg (hex 0) :fg (hex 11) :bold true}
    :BufferLineInfoVisible {:bg (hex 0) :fg (hex 11) :bold true}
    :BufferLineModified {:bg (hex 2) :fg (hex 11)}
    :BufferLineModifiedSelected {:bg (hex 0) :fg (hex 11)}
    :BufferLineModifiedVisible {:bg (hex 0) :fg (hex 11)}
    :BufferLineNumbers {:bg (hex 2) :fg (hex 6)}
    :BufferLineNumbersSelected {:bg (hex 0) :fg (hex 7) :bold true}
    :BufferLineNumbersVisible {:bg (hex 0) :fg (hex 6) :bold true}
    :BufferLinePick {:bg (hex 2) :fg (hex 12) :bold true}
    :BufferLinePickSelected {:bg (hex 0) :fg (hex 12) :bold true}
    :BufferLinePickVisible {:bg (hex 0) :fg (hex 12) :bold true}
    :BufferLineSeparator {:bg (hex 1) :fg (hex 1)}
    :BufferLineSeparatorSelected {:bg (hex 1) :fg (hex 1)}
    :BufferLineSeparatorVisible {:bg (hex 1) :fg (hex 1)}
    :BufferLineTab {:bg (hex 2) :fg (hex 6)}
    :BufferLineTabClose {:bg (hex 1) :fg (hex 8) :bold true}
    :BufferLineTabSelected {:bg (hex 0) :fg (hex 7) :bold true}
    :BufferLineWarning {:bg (hex 2) :fg (hex 10) :bold true}
    :BufferLineWarningDiagnostic {:bg (hex 2) :fg (hex 10) :bold true}
    :BufferLineWarningDiagnosticSelected {:bg (hex 0) :fg (hex 10) :bold true}
    :BufferLineWarningDiagnosticVisible {:bg (hex 0) :fg (hex 10) :bold true}
    :BufferLineWarningSelected {:bg (hex 0) :fg (hex 10) :bold true}
    :BufferLineWarningVisible {:bg (hex 0) :fg (hex 10) :bold true}})

(fn init []
  "Setup highlight groups."
  (call :sopa :hi_groups groups))

{ : groups
  : init}
