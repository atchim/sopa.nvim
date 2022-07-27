(import-macros
  {: call} :fnl.sopa.macros
  {: hex} :fnl.sopa.palette)

(local groups
  { ; Constant-Like
    :CmpItemKindConstant {:fg (hex 9) :bold true}
    :CmpItemKindValue :CmpItemKindConstant

    ; Identifier-Like
    :CmpItemKindConstructor :CmpItemKindMethod
    :CmpItemKindField :CmpItemKindVariable
    :CmpItemKindFunction :CmpItemKindVariable
    :CmpItemKindMethod :CmpItemKindFunction
    :CmpItemKindProperty :CmpItemKindField
    :CmpItemKindVariable {:fg (hex 13) :bold true}

    ; Match
    :CmpItemAbbrMatch {:fg (hex 10) :bold true}
    :CmpItemAbbrMatchFuzzy {:fg (hex 14) :bold true}

    ; Statement-Like
    :CmpItemKindKeyword {:fg (hex 15) :bold true}
    :CmpItemKindOperator :CmpItemKindKeyword

    ; Type-Like
    :CmpItemKindClass :CmpItemKindStruct
    :CmpItemKindEnum :CmpItemKindTypeParamter
    :CmpItemKindEnumMember :CmpItemKindEnum
    :CmpItemKindInterface :CmpItemKindClass
    :CmpItemKindReference :CmpItemKindTypeParamter
    :CmpItemKindStruct :CmpItemKindTypeParamter
    :CmpItemKindTypeParamter {:fg (hex 14) :bold true}
    :CmpItemKindUnit :CmpItemKindTypeParamter

    ; Misc
    :CmpItemAbbrDeprecated {:strikethrough true}
    :CmpItemKindColor {:fg (hex 12) :bold true}
    :CmpItemKindEvent {:fg (hex 10) :bold true}
    :CmpItemKindFile {:fg (hex 14) :bold true}
    :CmpItemKindFolder {:fg (hex 15) :bold true}
    :CmpItemKindModule {:fg (hex 8) :bold true}
    :CmpItemKindText {:fg (hex 11) :bold true}
    :CmpItemKindSnippet {:fg (hex 12) :bold true}})

(fn init []
  "Setup highlight groups."
  (call :sopa :hi_groups groups))

{ : groups
  : init}
