(import-macros {: call} :fnl.sopa.macros)

(fn init []
  "Setup highlight groups for enabled plugins."
  (local config (require :sopa.config))
  (each [plugin _ (pairs (. config :enabled_plugins))]
    (call (.. :sopa.plugins. plugin) :init)))

{: init}
