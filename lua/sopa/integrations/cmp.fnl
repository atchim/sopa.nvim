(import-macros x :lua.sopa.palette)

(local groups
  { ; Constant-Like
    :CmpItemKindConstant {:fg (x 9) :bold true}
    :CmpItemKindValue {:link :CmpItemKindConstant}

    ; Identifier-Like
    :CmpItemKindVariable {:fg (x 13) :bold true}
    :CmpItemKindConstructor {:link :CmpItemKindMethod}
    :CmpItemKindField {:link :CmpItemKindVariable}
    :CmpItemKindFunction {:link :CmpItemKindVariable}
    :CmpItemKindMethod {:link :CmpItemKindFunction}
    :CmpItemKindProperty {:link :CmpItemKindField}

    ; Match
    :CmpItemAbbrMatch {:fg (x 10) :bold true}
    :CmpItemAbbrMatchFuzzy {:fg (x 14) :bold true}

    ; Statement-Like
    :CmpItemKindKeyword {:fg (x 15) :bold true}
    :CmpItemKindOperator {:link :CmpItemKindKeyword}

    ; Type-Like
    :CmpItemKindTypeParamter {:fg (x 14) :bold true}
    :CmpItemKindClass {:link :CmpItemKindStruct}
    :CmpItemKindEnum {:link :CmpItemKindTypeParamter}
    :CmpItemKindEnumMember {:link :CmpItemKindEnum}
    :CmpItemKindInterface {:link :CmpItemKindClass}
    :CmpItemKindReference {:link :CmpItemKindTypeParamter}
    :CmpItemKindStruct {:link :CmpItemKindTypeParamter}
    :CmpItemKindUnit {:link :CmpItemKindTypeParamter}

    ; Misc
    :CmpItemAbbrDeprecated {:strikethrough true}
    :CmpItemKindColor {:fg (x 12) :bold true}
    :CmpItemKindEvent {:fg (x 10) :bold true}
    :CmpItemKindFile {:fg (x 14) :bold true}
    :CmpItemKindFolder {:fg (x 15) :bold true}
    :CmpItemKindModule {:fg (x 8) :bold true}
    :CmpItemKindText {:fg (x 11) :bold true}
    :CmpItemKindSnippet {:fg (x 12) :bold true}})

(fn setup []
  "Sets up highlight groups for `nvim-cmp`."
  (let [hi vim.api.nvim_set_hl]
    (each [group args (pairs groups)] (hi 0 group args))))

{: groups : setup}
