(import-macros x :lua.sopa.palette)

(local groups
  { :LeapLabelPrimary {:bg (x 10) :fg (x 0) :bold true}
    :LeapLabelSecondary {:bg (x 14) :fg (x 0) :bold true}
    :LeapMatch {:bold true :underline true}})

(fn setup []
  "Sets up highlight groups for Leap."
  (let [hi vim.api.nvim_set_hl]
    (each [group args (pairs groups)] (hi 0 group args))))

{: groups : setup}
