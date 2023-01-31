(import-macros pal :lua.sopa.palette {: modcall} :soupmacs.soupmacs)
(local M {})

(set M.groups
  { :Character {:fg (pal 11)}
    :ColorColumn {:bg (pal 1)}
    :Comment {:fg (pal 6)}
    :Conceal {:fg (pal 12) :italic true}
    :Constant {:fg (pal 9)}
    :CursorColumn {:bg (pal 2)}
    :CursorLine {:link :CursorColumn}
    :CursorLineNr {:fg (pal 6) :bold true}
    :DiagnosticError {:fg (pal 8)}
    :DiagnosticHint {:fg (pal 9)}
    :DiagnosticInfo {:fg (pal 11)}
    :DiagnosticUnderlineError {:sp (pal 8) :underline true}
    :DiagnosticUnderlineHint {:sp (pal 9) :underline true}
    :DiagnosticUnderlineInfo {:sp (pal 11) :underline true}
    :DiagnosticUnderlineWarn {:sp (pal 10) :underline true}
    :DiagnosticWarn {:fg (pal 10)}
    :DiffAdd {:fg (pal 11) :bold true :reverse true}
    :DiffChange {:fg (pal 9) :bold true :reverse true}
    :DiffDelete {:fg (pal 8) :bold true :reverse true}
    :DiffText {:fg (pal 10) :bold true :reverse true}
    :Directory {:fg (pal 15) :bold true}
    :Error {:fg (pal 8) :bold true :reverse true}
    :ErrorMsg {:fg (pal 8) :bold true}
    :FoldColumn {:link :LineNr}
    :Folded {:bg (pal 2) :fg (pal 6)}
    :Identifier {:fg (pal 13)}
    :Ignore {}
    :IncSearch {:fg (pal 14) :bold true :reverse true}
    :LineNr {:fg (pal 5)}
    :MatchParen {:bg (pal 4) :fg (pal 15) :bold true}
    :MoreMsg {:fg (pal 11) :bold true}
    :NonText {:fg (pal 4) :bold true}
    :Normal {:bg (pal 0) :fg (pal 7)}
    :Number {:fg (pal 10)}
    :Pmenu {:bg (pal 1) :fg (pal 6)}
    :PmenuSBar {:bg (pal 2)}
    :PmenuSel {:bg (pal 3)}
    :PmenuThumb {:link :PmenuSel}
    :Preproc {:fg (pal 8)}
    :Question {:fg (pal 9) :bold true}
    :Search {:fg (pal 10) :bold true :reverse true}
    :SignColumn {:link :LineNr}
    :Special {:fg (pal 12)}
    :SpecialKey {:fg (pal 12) :italic true}
    :SpellBad {:sp (pal 8) :undercurl true}
    :SpellCap {:sp (pal 11) :undercurl true}
    :SpellLocal {:sp (pal 10) :undercurl true}
    :SpellRare {:sp (pal 9) :undercurl true}
    :Statement {:fg (pal 15)}
    :StatusLine {:bg (pal 2) :fg (pal 7) :bold true}
    :StatusLineNC {:bg (pal 1) :fg (pal 5) :bold true}
    :String {:link :Character}
    :TabLine {:bg (pal 1) :fg (pal 6) :bold true}
    :TabLineFill {:bg (pal 1)}
    :TabLineSel {:bg (pal 2) :fg (pal 7) :bold true}
    :Title {:fg (pal 12) :bold true}
    :Todo {:fg (pal 14) :bold true :reverse true}
    :Type {:fg (pal 14)}
    :Underlined {:underline true}
    :VertSplit {:bg (pal 1) :fg (pal 4)}
    :Visual {:bg (pal 3)}
    :WarningMsg {:fg (pal 10) :bold true}
    :Whitespace {:fg (pal 5)}
    :WildMenu {:bg (pal 0) :fg (pal 6) :bold true}
    :WinBar {:bg (pal 2) :fg (pal 6) :bold true}
    :WinBarNC {:link :StatusLineNC}
    :diffAdded {:fg (pal 11)}
    :diffChanged {:fg (pal 9)}
    :diffFile {:link :Comment}
    :diffLine {:fg (pal 15)}
    :diffRemoved {:fg (pal 8)}
    :diffSubname {:fg (pal 14)}
    :htmlEndTag {:link :htmlTag}
    :htmlTag {:link :Comment}
    :vimCommentTitle {:link :Todo}})

(set M.term_colors
  { :terminal_color_0 (pal 0)
    :terminal_color_1 (pal 8)
    :terminal_color_2 (pal 11)
    :terminal_color_3 (pal 9)
    :terminal_color_4 (pal 13)
    :terminal_color_5 (pal 14)
    :terminal_color_6 (pal 12)
    :terminal_color_7 (pal 5)
    :terminal_color_8 (pal 3)
    :terminal_color_9 (pal 8)
    :terminal_color_10 (pal 11)
    :terminal_color_11 (pal 10)
    :terminal_color_12 (pal 13)
    :terminal_color_13 (pal 15)
    :terminal_color_14 (pal 12)
    :terminal_color_15 (pal 7)})

(fn M.init []
  (modcall :sopa :hi_groups M.groups)
  (each [name color (pairs M.term_colors)] (tset vim.g name color)))

M
