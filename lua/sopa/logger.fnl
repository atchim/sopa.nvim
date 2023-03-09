(local notify vim.notify)
(local ERROR vim.log.levels.ERROR)
(local WARN vim.log.levels.WARN)

(fn log [scope level msg]
  "Notifies a `msg` from `scope` with `level`."
  (notify (-> "%s: %s" (: :format scope msg)) level))

(fn logger [?scope]
  "Returns a logger for `scope`."
  (local scope (if ?scope (.. :sopa. ?scope) :sopa))
  { :err (partial log scope ERROR)
    :warn (partial log scope WARN)})

logger
