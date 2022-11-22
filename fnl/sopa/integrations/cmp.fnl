(import-macros pal :fnl.sopa.palette {: modcall} :soupmacs.soupmacs)
(local M {})

(set M.groups
  { ; Constant-Like
    :CmpItemKindConstant {:fg (pal 9) :bold true}
    :CmpItemKindValue {:link :CmpItemKindConstant}

    ; Identifier-Like
    :CmpItemKindVariable {:fg (pal 13) :bold true}
    :CmpItemKindConstructor {:link :CmpItemKindMethod}
    :CmpItemKindField {:link :CmpItemKindVariable}
    :CmpItemKindFunction {:link :CmpItemKindVariable}
    :CmpItemKindMethod {:link :CmpItemKindFunction}
    :CmpItemKindProperty {:link :CmpItemKindField}

    ; Match
    :CmpItemAbbrMatch {:fg (pal 10) :bold true}
    :CmpItemAbbrMatchFuzzy {:fg (pal 14) :bold true}

    ; Statement-Like
    :CmpItemKindKeyword {:fg (pal 15) :bold true}
    :CmpItemKindOperator {:link :CmpItemKindKeyword}

    ; Type-Like
    :CmpItemKindTypeParamter {:fg (pal 14) :bold true}
    :CmpItemKindClass {:link :CmpItemKindStruct}
    :CmpItemKindEnum {:link :CmpItemKindTypeParamter}
    :CmpItemKindEnumMember {:link :CmpItemKindEnum}
    :CmpItemKindInterface {:link :CmpItemKindClass}
    :CmpItemKindReference {:link :CmpItemKindTypeParamter}
    :CmpItemKindStruct {:link :CmpItemKindTypeParamter}
    :CmpItemKindUnit {:link :CmpItemKindTypeParamter}

    ; Misc
    :CmpItemAbbrDeprecated {:strikethrough true}
    :CmpItemKindColor {:fg (pal 12) :bold true}
    :CmpItemKindEvent {:fg (pal 10) :bold true}
    :CmpItemKindFile {:fg (pal 14) :bold true}
    :CmpItemKindFolder {:fg (pal 15) :bold true}
    :CmpItemKindModule {:fg (pal 8) :bold true}
    :CmpItemKindText {:fg (pal 11) :bold true}
    :CmpItemKindSnippet {:fg (pal 12) :bold true}})

(fn M.init [] (modcall :sopa :hi_groups M.groups))

M
