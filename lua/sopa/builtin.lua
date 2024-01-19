local groups = {Character = {fg = "#00ad2b"}, ColorColumn = {bg = "#0c0c0c"}, Comment = {fg = "#5a5a5a"}, Conceal = {fg = "#00a7a7", italic = true}, Constant = {fg = "#bc8f05"}, Cursor = {bg = "#959595", fg = "#080808"}, CursorColumn = {bg = "#121212"}, CursorLine = {link = "CursorColumn"}, CursorLineNr = {fg = "#5a5a5a", bold = true}, Delimiter = {link = "Operator"}, DiagnosticError = {fg = "#ff5b5b"}, DiagnosticHint = {fg = "#bc8f05"}, DiagnosticInfo = {fg = "#00ad2b"}, DiagnosticUnderlineError = {sp = "#ff5b5b", underline = true}, DiagnosticUnderlineHint = {sp = "#bc8f05", underline = true}, DiagnosticUnderlineInfo = {sp = "#00ad2b", underline = true}, DiagnosticUnderlineWarn = {sp = "#54a900", underline = true}, DiagnosticWarn = {fg = "#54a900"}, DiffAdd = {fg = "#00ad2b", bold = true, reverse = true}, DiffChange = {fg = "#bc8f05", bold = true, reverse = true}, DiffDelete = {fg = "#ff5b5b", bold = true, reverse = true}, DiffText = {fg = "#54a900", bold = true, reverse = true}, Directory = {fg = "#fc4ad0", bold = true}, Error = {fg = "#ff5b5b", bold = true, reverse = true}, ErrorMsg = {fg = "#ff5b5b", bold = true}, FoldColumn = {link = "LineNr"}, Folded = {bg = "#121212", fg = "#5a5a5a"}, Function = {fg = "#6b90ff"}, Identifier = {fg = "#6b90ff"}, Ignore = {}, IncSearch = {fg = "#ba74ff", bold = true, reverse = true}, LineNr = {fg = "#383838"}, MatchParen = {bg = "#252525", fg = "#fc4ad0", bold = true}, MoreMsg = {fg = "#00ad2b", bold = true}, NonText = {fg = "#252525", bold = true}, Normal = {bg = "#080808", fg = "#959595"}, Number = {fg = "#54a900"}, Operator = {link = "Special"}, Pmenu = {bg = "#0c0c0c", fg = "#5a5a5a"}, PmenuSBar = {bg = "#121212"}, PmenuSel = {bg = "#1a1a1a"}, PmenuThumb = {link = "PmenuSel"}, Preproc = {fg = "#ff5b5b"}, Question = {fg = "#bc8f05", bold = true}, Search = {fg = "#54a900", bold = true, reverse = true}, SignColumn = {link = "LineNr"}, Special = {fg = "#00a7a7"}, SpecialKey = {fg = "#00a7a7", italic = true}, SpellBad = {sp = "#ff5b5b", undercurl = true}, SpellCap = {sp = "#00ad2b", undercurl = true}, SpellLocal = {sp = "#54a900", undercurl = true}, SpellRare = {sp = "#bc8f05", undercurl = true}, Statement = {fg = "#fc4ad0"}, StatusLine = {bg = "#121212", fg = "#959595", bold = true}, StatusLineNC = {bg = "#0c0c0c", fg = "#383838", bold = true}, String = {link = "Character"}, Structure = {link = "Type"}, TabLine = {bg = "#0c0c0c", fg = "#5a5a5a", bold = true}, TabLineFill = {bg = "#0c0c0c"}, TabLineSel = {bg = "#121212", fg = "#959595", bold = true}, Title = {fg = "#00a7a7", bold = true}, Todo = {fg = "#ba74ff", bold = true, reverse = true}, Type = {fg = "#ba74ff"}, Underlined = {underline = true}, VertSplit = {bg = "#0c0c0c", fg = "#252525"}, Visual = {bg = "#1a1a1a"}, WarningMsg = {fg = "#54a900", bold = true}, Whitespace = {fg = "#383838"}, WildMenu = {bg = "#080808", fg = "#5a5a5a", bold = true}, WinBar = {bg = "#121212", fg = "#5a5a5a", bold = true}, WinBarNC = {link = "StatusLineNC"}, diffAdded = {fg = "#00ad2b"}, diffChanged = {fg = "#bc8f05"}, diffFile = {link = "Comment"}, diffLine = {fg = "#fc4ad0"}, diffRemoved = {fg = "#ff5b5b"}, diffSubname = {fg = "#ba74ff"}, htmlEndTag = {link = "htmlTag"}, htmlTag = {link = "Comment"}, vimCommentTitle = {link = "Todo"}}
local term_colors = {terminal_color_0 = "#080808", terminal_color_1 = "#ff5b5b", terminal_color_2 = "#00ad2b", terminal_color_3 = "#bc8f05", terminal_color_4 = "#6b90ff", terminal_color_5 = "#ba74ff", terminal_color_6 = "#00a7a7", terminal_color_7 = "#383838", terminal_color_8 = "#1a1a1a", terminal_color_9 = "#ff5b5b", terminal_color_10 = "#00ad2b", terminal_color_11 = "#54a900", terminal_color_12 = "#6b90ff", terminal_color_13 = "#fc4ad0", terminal_color_14 = "#00a7a7", terminal_color_15 = "#959595"}
return {groups = groups, terminal_colors = term_colors}
