(import-macros {: modcall} :soupmacs.soupmacs)
(local M {})

(fn M.init []
  "Highlights groups for enabled integrations."
  (let [config (require :sopa.config)]
    (each [integration _ (pairs (. config :enabled_integrations))]
      (modcall (.. :sopa.integrations. integration) :init ()))))

M
