(macro zero-based [ls]
  "Returns a zero-based indexing version of `ls`."
  (collect [i v (ipairs ls)] (values (- i 1) v)))

(let
  [ __index
    (zero-based
      [ :#080808
        :#0c0c0c
        :#121212
        :#1a1a1a
        :#252525
        :#383838
        :#5a5a5a
        :#959595
        :#ff5b5b
        :#bc8f05
        :#54a900
        :#00ad2b
        :#00a7a7
        :#6b90ff
        :#ba74ff
        :#fc4ad0])
    __call (fn [_ i] (. __index i))
    __newindex #nil]
  (setmetatable {} {: __call : __index : __newindex}))
