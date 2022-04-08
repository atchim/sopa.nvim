; Configurations for plugins.

(fn setup []
  "Setup highlight groups for enabled plugins."
  (local config (require :sopa.config))
  (each [plugin _ (pairs (. config :enabled_plugins))]
    (local {: setup} (require (.. :sopa.plugins. plugin)))
    (setup)))

{: setup}
