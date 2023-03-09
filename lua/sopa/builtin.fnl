(import-macros x :lua.sopa.palette)

(local groups
  { :Character {:fg (x 11)}
    :ColorColumn {:bg (x 1)}
    :Comment {:fg (x 6)}
    :Conceal {:fg (x 12) :italic true}
    :Constant {:fg (x 9)}
    :CursorColumn {:bg (x 2)}
    :CursorLine {:link :CursorColumn}
    :CursorLineNr {:fg (x 6) :bold true}
    :DiagnosticError {:fg (x 8)}
    :DiagnosticHint {:fg (x 9)}
    :DiagnosticInfo {:fg (x 11)}
    :DiagnosticUnderlineError {:sp (x 8) :underline true}
    :DiagnosticUnderlineHint {:sp (x 9) :underline true}
    :DiagnosticUnderlineInfo {:sp (x 11) :underline true}
    :DiagnosticUnderlineWarn {:sp (x 10) :underline true}
    :DiagnosticWarn {:fg (x 10)}
    :DiffAdd {:fg (x 11) :bold true :reverse true}
    :DiffChange {:fg (x 9) :bold true :reverse true}
    :DiffDelete {:fg (x 8) :bold true :reverse true}
    :DiffText {:fg (x 10) :bold true :reverse true}
    :Directory {:fg (x 15) :bold true}
    :Error {:fg (x 8) :bold true :reverse true}
    :ErrorMsg {:fg (x 8) :bold true}
    :FoldColumn {:link :LineNr}
    :Folded {:bg (x 2) :fg (x 6)}
    :Identifier {:fg (x 13)}
    :Ignore {}
    :IncSearch {:fg (x 14) :bold true :reverse true}
    :LineNr {:fg (x 5)}
    :MatchParen {:bg (x 4) :fg (x 15) :bold true}
    :MoreMsg {:fg (x 11) :bold true}
    :NonText {:fg (x 4) :bold true}
    :Normal {:bg (x 0) :fg (x 7)}
    :Number {:fg (x 10)}
    :Pmenu {:bg (x 1) :fg (x 6)}
    :PmenuSBar {:bg (x 2)}
    :PmenuSel {:bg (x 3)}
    :PmenuThumb {:link :PmenuSel}
    :Preproc {:fg (x 8)}
    :Question {:fg (x 9) :bold true}
    :Search {:fg (x 10) :bold true :reverse true}
    :SignColumn {:link :LineNr}
    :Special {:fg (x 12)}
    :SpecialKey {:fg (x 12) :italic true}
    :SpellBad {:sp (x 8) :undercurl true}
    :SpellCap {:sp (x 11) :undercurl true}
    :SpellLocal {:sp (x 10) :undercurl true}
    :SpellRare {:sp (x 9) :undercurl true}
    :Statement {:fg (x 15)}
    :StatusLine {:bg (x 2) :fg (x 7) :bold true}
    :StatusLineNC {:bg (x 1) :fg (x 5) :bold true}
    :String {:link :Character}
    :TabLine {:bg (x 1) :fg (x 6) :bold true}
    :TabLineFill {:bg (x 1)}
    :TabLineSel {:bg (x 2) :fg (x 7) :bold true}
    :Title {:fg (x 12) :bold true}
    :Todo {:fg (x 14) :bold true :reverse true}
    :Type {:fg (x 14)}
    :Underlined {:underline true}
    :VertSplit {:bg (x 1) :fg (x 4)}
    :Visual {:bg (x 3)}
    :WarningMsg {:fg (x 10) :bold true}
    :Whitespace {:fg (x 5)}
    :WildMenu {:bg (x 0) :fg (x 6) :bold true}
    :WinBar {:bg (x 2) :fg (x 6) :bold true}
    :WinBarNC {:link :StatusLineNC}
    :diffAdded {:fg (x 11)}
    :diffChanged {:fg (x 9)}
    :diffFile {:link :Comment}
    :diffLine {:fg (x 15)}
    :diffRemoved {:fg (x 8)}
    :diffSubname {:fg (x 14)}
    :htmlEndTag {:link :htmlTag}
    :htmlTag {:link :Comment}
    :vimCommentTitle {:link :Todo}})

(local term-colors
  { :terminal_color_0 (x 0)
    :terminal_color_1 (x 8)
    :terminal_color_2 (x 11)
    :terminal_color_3 (x 9)
    :terminal_color_4 (x 13)
    :terminal_color_5 (x 14)
    :terminal_color_6 (x 12)
    :terminal_color_7 (x 5)
    :terminal_color_8 (x 3)
    :terminal_color_9 (x 8)
    :terminal_color_10 (x 11)
    :terminal_color_11 (x 10)
    :terminal_color_12 (x 13)
    :terminal_color_13 (x 15)
    :terminal_color_14 (x 12)
    :terminal_color_15 (x 7)})

{: groups :terminal_colors term-colors}
