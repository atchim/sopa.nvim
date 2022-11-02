(import-macros {: ix} :fnl.sopa.palette)
(macro augroup-name [] :sopa)

(local M {})

(set M.groups
  { :LeapLabelPrimary {:bg (ix 10) :fg (ix 0) :bold true}
    :LeapLabelSecondary {:bg (ix 14) :fg (ix 0) :bold true}
    :LeapMatch {:bold true :underline true}})

(fn M.init []
  "Sets an auto command to highlight groups when Leap start running."
  (let [api vim.api]
    (api.nvim_create_augroup (augroup-name) {})
    (api.nvim_create_autocmd
      :User
      { :group (augroup-name)
        :pattern :LeapEnter
        :desc "Highlights groups for Leap."
        :callback
        #(if
          (= vim.g.colors_name :sopa)
          (let [{: hi_groups} (require :sopa)] (hi_groups M.groups))
          (vim.api.nvim_del_augroup_by_name (augroup-name)))})))

M
