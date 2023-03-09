(import-macros x :lua.sopa.palette)

(local groups
  { :IndentBlanklineChar {:fg (x 2) :nocombine true}
    :IndentBlanklineContextChar {:fg (x 5) :nocombine true}
    :IndentBlanklineContextStart {:sp (x 5) :underline true}
    :IndentBlanklineSpaceCharBlankline {:link :IndentBlanklineChar}})

(fn setup []
  "Sets up highlight groups for `indent-blankline`."
  (let [hi vim.api.nvim_set_hl]
    (each [group args (pairs groups)] (hi 0 group args))))

{: groups : setup}
