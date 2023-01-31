(import-macros pal :lua.sopa.palette)
(local M {})

(set M.groups
  { :LeapLabelPrimary {:bg (pal 10) :fg (pal 0) :bold true}
    :LeapLabelSecondary {:bg (pal 14) :fg (pal 0) :bold true}
    :LeapMatch {:bold true :underline true}})

(fn M.init []
  "Sets an auto command to highlight groups when Leap start running."
  (macro group [] :sopa_integration_leap)
  (vim.api.nvim_create_augroup (group) {})
  (vim.api.nvim_create_autocmd
    :User
    { :pattern :LeapEnter
      :desc "Highlights groups for Leap."
      :group (group)
      :callback
      #(if
        (= vim.g.colors_name :sopa)
        (let [{: hi_groups} (require :sopa)] (hi_groups M.groups))
        (vim.api.nvim_del_augroup_by_name (group)))}))

M
