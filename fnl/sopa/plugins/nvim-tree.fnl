(import-macros {: hex} :fnl.sopa.palette)

(local groups {:NvimTreeWindowPicker {:bg (hex 2) :fg (hex 7) :bold true}})

(fn setup []
  "Setup colors for `nvim-tree.lua` plugin."
  (let [{: hi_groups} (require :sopa)]
    (hi_groups groups)))

{: groups : setup}
