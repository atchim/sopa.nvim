(import-macros {: modcall} :soupmacs.soupmacs)

(local {: check : metasetting : reset : settings} (require :sopa.config.utils))
(local {: err} (modcall :sopa.logger :config))

(local integrations
  (let
    [ default
      { :cmp true
        :indent-blankline true
        :leap true
        :neo-tree true
        :treesitter true}
      setter
      (fn [t k v]
        (if (. default k)
          (when (check (.. :integrations. k) v [:boolean :nil]) (tset t k v))
          (err (.. "`integrations`: invalid key: " k))))]
    (metasetting default setter)))

(local config
  (let
    [ default {:custom_groups {} : integrations :terminal_colors true}
      setter
      (fn [t k v]
        (match k
          :custom_groups (when (check k v :table) (tset t k v))
          :integrations
          (when (check k v [:table :nil])
            (if (= nil v)
              (reset t.integrations)
              (each [k v (settings v)] (tset t.integrations k v))))
          :terminal_colors (when (check k v [:boolean :nil]) (tset t k v))
          _ (err (.. "invalid setting: " k))))]
    (metasetting default setter)))

(fn reset-config [?config]
  "Resets configuration to defaults, or to `?config` if present."
  (reset config)
  (when ?config (each [k v (pairs ?config)] (tset config k v))))

{: config :reset reset-config}
