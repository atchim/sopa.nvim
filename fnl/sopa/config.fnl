(local def (setmetatable
  {:enabled_plugins []}
  {:__index (fn [_ key] (error (.. "invalid setting: " key)))}))

(local cfg (setmetatable {} {:__index def}))

(local plugins (setmetatable
  { :bufferline true
    :copilot true
    :leap true
    :nvim-tree true
    :treesitter true}
  { :__index (fn [_ key]
      (error (.. "invalid plugin name: " key)))}))

(fn enable-plugins [val]
  (local t (type val))
  (match t
    :nil (tset cfg :enabled_plugins nil)
    :table (let [enabled {}]
      (each [_ plugin (ipairs val)]
        (when (. plugins plugin)
          (tset enabled plugin true)))
      (tset cfg :enabled_plugins enabled))
    _ (error (.. "`enabled_plugins` must be table or nil, got: " t))))

(setmetatable {}
  { :__index cfg
    :__newindex (fn [_ key val]
      (match key
        :enabled_plugins (enable-plugins val)
        _ (error (.. "invalid setting: " key))))})
