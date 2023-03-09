(import-macros x :lua.sopa.palette)

(local groups
  { "@text.danger" {:fg (x 8) :bold true :reverse true}
    "@text.note" {:fg (x 12) :bold true :reverse true}
    "@text.warning" {:fg (x 9) :bold true :reverse true}})

(fn setup []
  "Sets up highlight groups for `nvim-treesitter`."
  (let [hi vim.api.nvim_set_hl]
    (each [group args (pairs groups)] (hi 0 group args))))

{: groups : setup}
