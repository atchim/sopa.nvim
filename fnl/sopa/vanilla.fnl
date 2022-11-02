(import-macros {: ix} :fnl.sopa.palette {: modcall} :soupmacs.soupmacs)
(local M {})

(set M.groups
  { :Character {:fg (ix 11)}
    :ColorColumn {:bg (ix 1)}
    :Comment {:fg (ix 6)}
    :Conceal {:fg (ix 12) :italic true}
    :Constant {:fg (ix 9)}
    :CursorColumn {:bg (ix 2)}
    :CursorLine {:link :CursorColumn}
    :CursorLineNr {:fg (ix 6) :bold true}
    :DiagnosticError {:fg (ix 8)}
    :DiagnosticHint {:fg (ix 9)}
    :DiagnosticInfo {:fg (ix 11)}
    :DiagnosticUnderlineError {:sp (ix 8) :underline true}
    :DiagnosticUnderlineHint {:sp (ix 9) :underline true}
    :DiagnosticUnderlineInfo {:sp (ix 11) :underline true}
    :DiagnosticUnderlineWarn {:sp (ix 10) :underline true}
    :DiagnosticWarn {:fg (ix 10)}
    :DiffAdd {:bg (ix 11) :fg (ix 0) :bold true}
    :DiffChange {:bg (ix 9) :fg (ix 0) :bold true}
    :DiffDelete {:bg (ix 8) :fg (ix 0) :bold true}
    :DiffText {:bg (ix 10) :fg (ix 0) :bold true}
    :Directory {:fg (ix 15) :bold true}
    :Error {:bg (ix 8) :fg (ix 0) :bold true}
    :ErrorMsg {:fg (ix 8) :bold true}
    :FoldColumn {:link :LineNr}
    :Folded {:bg (ix 2) :fg (ix 6)}
    :Identifier {:fg (ix 13)}
    :Ignore {}
    :IncSearch {:fg (ix 14) :bold true :reverse true}
    :LineNr {:fg (ix 5)}
    :MatchParen {:bg (ix 4) :fg (ix 15) :bold true}
    :MoreMsg {:fg (ix 11) :bold true}
    :NonText {:fg (ix 4) :bold true}
    :Normal {:bg (ix 0) :fg (ix 7)}
    :Number {:fg (ix 10)}
    :Pmenu {:bg (ix 1) :fg (ix 6)}
    :PmenuSBar {:bg (ix 2)}
    :PmenuSel {:bg (ix 3)}
    :PmenuThumb {:link :PmenuSel}
    :Preproc {:fg (ix 8)}
    :Question {:fg (ix 9) :bold true}
    :Search {:bg (ix 10) :fg (ix 0) :bold true}
    :SignColumn {:link :LineNr}
    :Special {:fg (ix 12)}
    :SpecialKey {:fg (ix 12) :italic true}
    :SpellBad {:sp (ix 8) :undercurl true}
    :SpellCap {:sp (ix 11) :undercurl true}
    :SpellLocal {:sp (ix 10) :undercurl true}
    :SpellRare {:sp (ix 9) :undercurl true}
    :Statement {:fg (ix 15)}
    :StatusLine {:bg (ix 2) :fg (ix 7) :bold true}
    :StatusLineNC {:bg (ix 1) :fg (ix 5) :bold true}
    :String {:link :Character}
    :TabLine {:bg (ix 1) :fg (ix 6) :bold true}
    :TabLineFill {:bg (ix 1)}
    :TabLineSel {:bg (ix 2) :fg (ix 7) :bold true}
    :Title {:fg (ix 12) :bold true}
    :Todo {:fg (ix 14) :bold true :reverse true}
    :Type {:fg (ix 14)}
    :Underlined {:underline true}
    :VertSplit {:bg (ix 1) :fg (ix 4)}
    :Visual {:bg (ix 3)}
    :WarningMsg {:fg (ix 10) :bold true}
    :Whitespace {:fg (ix 5)}
    :WildMenu {:bg (ix 0) :fg (ix 6) :bold true}
    :WinBar {:bg (ix 2) :fg (ix 6) :bold true}
    :WinBarNC {:link :StatusLineNC}
    :diffAdded {:fg (ix 11)}
    :diffChanged {:fg (ix 9)}
    :diffFile {:link :Comment}
    :diffLine {:fg (ix 15)}
    :diffRemoved {:fg (ix 8)}
    :diffSubname {:fg (ix 14)}
    :htmlEndTag {:link :htmlTag}
    :htmlTag {:link :Comment}
    :vimCommentTitle {:link :Todo}})

(set M.term_colors
  { :terminal_color_0 (ix 0)
    :terminal_color_1 (ix 8)
    :terminal_color_2 (ix 11)
    :terminal_color_3 (ix 9)
    :terminal_color_4 (ix 13)
    :terminal_color_5 (ix 14)
    :terminal_color_6 (ix 12)
    :terminal_color_7 (ix 5)
    :terminal_color_8 (ix 3)
    :terminal_color_9 (ix 8)
    :terminal_color_10 (ix 11)
    :terminal_color_11 (ix 10)
    :terminal_color_12 (ix 13)
    :terminal_color_13 (ix 15)
    :terminal_color_14 (ix 12)
    :terminal_color_15 (ix 7)})

(fn M.init []
  (modcall :sopa :hi_groups M.groups)
  (each [name color (pairs M.term_colors)] (tset vim.g name color)))

M
