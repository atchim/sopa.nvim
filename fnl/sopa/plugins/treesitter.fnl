(import-macros {: hex} :fnl.sopa.palette)

(local groups
  { :TSDanger {:fg (hex 8) :bold true :reverse true}
    :TSNote {:fg (hex 12) :bold true :reverse true}})

(fn setup []
  "Setup colors for `nvim-treesitter` plugin"
  (let [{: hi_groups} (require :sopa)]
    (hi_groups groups)))

{: groups : setup}
