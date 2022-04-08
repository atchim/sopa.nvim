; Configurations for `nvim-tree.lua`, the file explorer tree.
; https://github.com/kyazdani42/nvim-tree.lua

(import-macros {: hex} :fnl.sopa.palette)

(local groups
  {:NvimTreeWindowPicker {:bg (hex 2) :fg (hex 7) :bold true}})

(fn setup []
  "Setup highlight groups."
  (local {: hi_groups} (require :sopa))
  (hi_groups groups))

{ : groups
  : setup}
