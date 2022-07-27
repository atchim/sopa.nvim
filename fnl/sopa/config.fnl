(local default-config
  (setmetatable
    {:enabled_plugins []}
    {:__index (fn [_ key] (error (.. "invalid setting: " key)))}))

(local user-config (setmetatable {} {:__index default-config}))

(local valid-plugins
  (setmetatable
    { :bufferline true
      :cmp true
      :copilot true
      :indent-blankline true
      :leap true
      :neo-tree true
      :nvim-tree true
      :treesitter true}
    {:__index (fn [_ key] (error (.. "invalid plugin name: " key)))}))

(fn enable-plugins [arg]
  "Enable plugins which will have their highlight groups set."
  (local t (type arg))
  (match t
    :nil (set user-config.enabled_plugins nil)
    :table
      (let [tbl {}]
        (each [_ plugin (ipairs arg)]
          ; Make sure plugin name is valid.
          (. valid-plugins plugin)
          (tset tbl plugin true))
        (set user-config.enabled_plugins tbl))
    _ (error (.. "`enabled_plugins` must be table or nil, got: " t))))

(setmetatable {}
  { :__index user-config
    :__newindex
      (fn [_ key val]
        (match key
          :enabled_plugins (enable-plugins val)
          _ (error (.. "invalid setting: " key))))})
