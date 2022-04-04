(import-macros {: hex} :fnl.sopa.palette)

(local api vim.api)

(local groups
  { :LeapLabelPrimary {:bg (hex 10) :fg (hex 0) :bold true}
    :LeapLabelSecounary {:bg (hex 14) :fg (hex 0) :bold true}
    :LeapMatch {:bold true :underline true}})

(fn setup []
  "Setup colors for `leap.nvim` plugin."
  (let [group (api.nvim_create_augroup :sopa_leap {})]
    (api.nvim_create_autocmd :User
      { : group
        :pattern :LeapEnter
        :desc "Highlight groups for Leap"
        :callback (fn []
          (let [{: hi_groups} (require :sopa)]
            (hi_groups groups)))})))

{: groups : setup}
