(import-macros {: ix} :fnl.sopa.palette {: modcall} :soupmacs.soupmacs)
(local M {})

(set M.groups
  { ; Constant-Like
    :CmpItemKindConstant {:fg (ix 9) :bold true}
    :CmpItemKindValue {:link :CmpItemKindConstant}

    ; Identifier-Like
    :CmpItemKindVariable {:fg (ix 13) :bold true}
    :CmpItemKindConstructor {:link :CmpItemKindMethod}
    :CmpItemKindField {:link :CmpItemKindVariable}
    :CmpItemKindFunction {:link :CmpItemKindVariable}
    :CmpItemKindMethod {:link :CmpItemKindFunction}
    :CmpItemKindProperty {:link :CmpItemKindField}

    ; Match
    :CmpItemAbbrMatchFuzzy {:fg (ix 14) :bold true}
    :CmpItemAbbrMatch {:fg (ix 10) :bold true}

    ; Statement-Like
    :CmpItemKindKeyword {:fg (ix 15) :bold true}
    :CmpItemKindOperator {:link :CmpItemKindKeyword}

    ; Type-Like
    :CmpItemKindTypeParamter {:fg (ix 14) :bold true}
    :CmpItemKindClass {:link :CmpItemKindStruct}
    :CmpItemKindEnum {:link :CmpItemKindTypeParamter}
    :CmpItemKindEnumMember {:link :CmpItemKindEnum}
    :CmpItemKindInterface {:link :CmpItemKindClass}
    :CmpItemKindReference {:link :CmpItemKindTypeParamter}
    :CmpItemKindStruct {:link :CmpItemKindTypeParamter}
    :CmpItemKindUnit {:link :CmpItemKindTypeParamter}

    ; Misc
    :CmpItemAbbrDeprecated {:strikethrough true}
    :CmpItemKindColor {:fg (ix 12) :bold true}
    :CmpItemKindEvent {:fg (ix 10) :bold true}
    :CmpItemKindFile {:fg (ix 14) :bold true}
    :CmpItemKindFolder {:fg (ix 15) :bold true}
    :CmpItemKindModule {:fg (ix 8) :bold true}
    :CmpItemKindText {:fg (ix 11) :bold true}
    :CmpItemKindSnippet {:fg (ix 12) :bold true}})

(fn M.init [] (modcall :sopa :hi_groups M.groups))

M
