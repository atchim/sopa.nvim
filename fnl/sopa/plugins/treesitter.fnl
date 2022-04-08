; Configurations for `nvim-treesitter`, the Tree-Sitter implementation.
; https://github.com/nvim-treesitter/nvim-treesitter

(import-macros {: hex} :fnl.sopa.palette)

(local groups
  { :TSDanger {:fg (hex 8) :bold true :reverse true}
    :TSNote {:fg (hex 12) :bold true :reverse true}})

(fn setup []
  "Setup highlight groups."
  (local {: hi_groups} (require :sopa))
  (hi_groups groups))

{ : groups
  : setup}
