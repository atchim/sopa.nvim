(import-macros {: hex} :fnl.sopa.palette)
(macro augroup-name [] :sopa)

(local groups
  { :LeapLabelPrimary {:bg (hex 10) :fg (hex 0) :bold true}
    :LeapLabelSecondary {:bg (hex 14) :fg (hex 0) :bold true}
    :LeapMatch {:bold true :underline true}})

(fn init []
  "Set auto command to highlight groups when Leap start running."
  (local api vim.api)
  (api.nvim_create_augroup (augroup-name) {})
  (api.nvim_create_autocmd :User
    { :group (augroup-name)
      :pattern :LeapEnter
      :desc "Highlight groups for Leap."
      :callback
        #(if (= :sopa vim.g.colors_name)
          (let [{: hi_groups} (require :sopa)]
            (hi_groups groups))
          (vim.api.nvim_del_augroup_by_name (augroup-name)))}))

{ : groups
  : init}
