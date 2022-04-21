(fn call [mod sub ...]
  "Expand to a call of function `sub` from `mod` with arguments `...`."
  (local sub (if (= :string (type sub)) [sub] sub))
  `((->
      (require ,mod)
      ,(unpack (icollect [_ sub# (ipairs sub)] `(. ,sub#))))
    ,...))

{: call}
