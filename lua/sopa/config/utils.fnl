(import-macros {: modcall : whenot} :soupmacs.soupmacs)
(local {: err} (modcall :sopa.logger :config.utils))
(local inspect vim.inspect)

(fn tyin? [t x]
  "Returns the type of `x` if it is contained in `t`."
  (var found? false)
  (local x (type x))
  (each [_ t (ipairs t) &until found?] (when (= t x) (set found? true)))
  found?)

(fn check [setting value checker ?msg]
  "Checks if `setting` has a valid `value` according with `checker`."
  (let
    [ value-ty (type value)
      (checker expected got)
      (match (type checker)
        :string (values (fn [x] (= checker (type x))) checker value-ty)
        :table
        (values (partial tyin? checker) (table.concat checker " or ") value-ty)
        :function (values checker (assert ?msg) (inspect value))
        ty (error (.. "`checker`: invalid type: " ty)))
      res (checker value)]
    (whenot res
      (err
        (->
          "config.%s: expected %s; got: %s"
          (: :format setting expected got))))
    res))

(fn reset [metasetting]
  "Resets a `metasetting` if able."
  (let [reset (?. (getmetatable metasetting) :__reset)]
    (when reset (reset metasetting))))

(fn settings [metasetting]
  "Returns an iterator over key-value settings of `metasetting` if able."
  (local x (?. (getmetatable metasetting) :__index))
  (when x
    (var t x)
    (fn iter [_ k]
      (let [(k v) (next t k)]
        (if
          (= nil k)
          (when (= t x)
            (let [x (?. (getmetatable t) :__index)] (when x (set t x) (iter))))
          (and (not= t x) (not= nil (rawget x k))) (iter nil k)
          (values k v))))))

(fn __reset [metasetting]
  "Resets a `metasetting` if able."
  (let [x (?. (getmetatable metasetting) :__index)]
    (when x
      (each [k v (settings metasetting)]
        (when (not (reset v)) (tset x k nil))))))

(fn metasetting [defaults setter]
  "Creates and returns a metasetting with `defaults` and `setter`."
  (let
    [ __index (setmetatable {} {:__index defaults})
      __newindex (fn [_ k v] (setter __index k v))]
    (setmetatable {} {: __index : __newindex : __reset})))

{: check : metasetting : reset : settings}
