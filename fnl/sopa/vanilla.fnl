(import-macros {: hex} :fnl.sopa.palette)

(local groups
  { :Character {:fg (hex 11)}
    :ColorColumn {:bg (hex 1)}
    :Comment {:fg (hex 6)}
    :Conceal {:fg (hex 12) :italic true}
    :Constant {:fg (hex 9)}
    :CursorColumn {:bg (hex 2)}
    :CursorLine :CursorColumn
    :CursorLineNr {:fg (hex 6) :bold true}
    :DiagnosticError {:fg (hex 8)}
    :DiagnosticHint {:fg (hex 9)}
    :DiagnosticInfo {:fg (hex 11)}
    :DiagnosticUnderlineError {:sp (hex 8) :underline true}
    :DiagnosticUnderlineHint {:sp (hex 9) :underline true}
    :DiagnosticUnderlineInfo {:sp (hex 11) :underline true}
    :DiagnosticUnderlineWarn {:sp (hex 10) :underline true}
    :DiagnosticWarn {:fg (hex 10)}
    :DiffAdd {:bg (hex 11) :fg (hex 0) :bold true}
    :diffAdded {:fg (hex 11)}
    :DiffChange {:bg (hex 9) :fg (hex 0) :bold true}
    :diffChanged {:fg (hex 9)}
    :DiffDelete {:bg (hex 8) :fg (hex 0) :bold true}
    :diffFile :Comment
    :diffLine {:fg (hex 15)}
    :diffRemoved {:fg (hex 8)}
    :diffSubname {:fg (hex 14)}
    :DiffText {:bg (hex 10) :fg (hex 0) :bold true}
    :Directory {:fg (hex 15) :bold true}
    :Error {:bg (hex 8) :fg (hex 0) :bold true}
    :ErrorMsg {:fg (hex 8) :bold true}
    :FoldColumn :LineNr
    :Folded {:bg (hex 2) :fg (hex 6)}
    :htmlEndTag :htmlTag
    :htmlTag :Comment
    :Identifier {:fg (hex 13)}
    :Ignore {}
    :IncSearch {:fg (hex 14) :bold true :reverse true}
    :LineNr {:fg (hex 5)}
    :MatchParen {:bg (hex 4) :fg (hex 15) :bold true}
    :NonText {:fg (hex 4) :bold true}
    :MoreMsg {:fg (hex 11) :bold true}
    :Normal {:bg (hex 0) :fg (hex 7)}
    :Number {:fg (hex 10)}
    :Pmenu {:bg (hex 1) :fg (hex 6)}
    :PmenuSBar {:bg (hex 2)}
    :PmenuSel {:bg (hex 3)}
    :PmenuThumb :PmenuSel
    :Preproc {:fg (hex 8)}
    :Question {:fg (hex 9) :bold true}
    :Search {:bg (hex 10) :fg (hex 0) :bold true}
    :SignColumn :LineNr
    :Special {:fg (hex 12)}
    :SpecialKey {:fg (hex 12) :italic true}
    :SpellBad {:sp (hex 8) :undercurl true}
    :SpellCap {:sp (hex 11) :undercurl true}
    :SpellLocal {:sp (hex 10) :undercurl true}
    :SpellRare {:sp (hex 9) :undercurl true}
    :Statement {:fg (hex 15)}
    :StatusLine {:bg (hex 2) :fg (hex 7) :bold true}
    :StatusLineNC {:bg (hex 1) :fg (hex 5) :bold true}
    :String :Character
    :TabLine {:bg (hex 2) :fg (hex 6)}
    :TabLineFill {:bg (hex 1)}
    :TabLineSel {:bg (hex 0) :fg (hex 7) :bold true}
    :Title {:fg (hex 12) :bold true}
    :Todo {:fg (hex 14) :bold true :reverse true}
    :Type {:fg (hex 14)}
    :Underlined {:underline true}
    :VertSplit {:bg (hex 1) :fg (hex 4)}
    :vimCommentTitle :Todo
    :Visual {:bg (hex 3)}
    :WarningMsg {:fg (hex 10) :bold true}
    :Whitespace {:fg (hex 5)}
    :WildMenu {:bg (hex 0) :fg (hex 6) :bold true}
    :WinBar {:bg (hex 2) :fg (hex 6) :bold true}
    :WinBarNC :StatusLineNC})

(local term_colors
  { :terminal_color_0 (hex 00)
    :terminal_color_1 (hex 08)
    :terminal_color_2 (hex 11)
    :terminal_color_3 (hex 09)
    :terminal_color_4 (hex 13)
    :terminal_color_5 (hex 14)
    :terminal_color_6 (hex 12)
    :terminal_color_7 (hex 05)
    :terminal_color_8 (hex 03)
    :terminal_color_9 (hex 08)
    :terminal_color_10 (hex 11)
    :terminal_color_11 (hex 10)
    :terminal_color_12 (hex 13)
    :terminal_color_13 (hex 15)
    :terminal_color_14 (hex 12)
    :terminal_color_15 (hex 07)})

{ : groups
  : term_colors}
