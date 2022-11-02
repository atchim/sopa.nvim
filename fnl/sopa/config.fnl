(local default-config
  (setmetatable
    {:enabled_integrations []}
    {:__index (fn [_ key] (error (.. "invalid setting: " key)))}))

(local user-config (setmetatable {} {:__index default-config}))

(local valid-integrations
  (setmetatable
    { :cmp true
      :indent-blankline true
      :leap true
      :neo-tree true
      :treesitter true}
    {:__index (fn [_ key] (error (.. "invalid integration name: " key)))}))

(fn enable-integrations [arg]
  "Enables integrations which will have their highlight groups set."
  (local t (type arg))
  (match t
    :nil (set user-config.enabled_integrations nil)
    :table
    (let [tbl {}]
      (each [_ integration (ipairs arg)]
        ; Make sure integration name is valid.
        (. valid-integrations integration)
        (tset tbl integration true))
      (set user-config.enabled_integrations tbl))
    _ (error (.. "`enabled_integrations` must be table or nil, got: " t))))

(setmetatable {}
  { :__index user-config
    :__newindex
    (fn [_ key val]
      (match key
        :enabled_integrations (enable-integrations val)
        _ (error (.. "invalid setting: " key))))})
