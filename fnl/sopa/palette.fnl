(macro z [ls]
  "Returns a zero-based indexing version of `ls`."
  (collect [i v (ipairs ls)] (values (- i 1) v)))

(let
  [ palette
    (z
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
        :#fc4ad0])]
  (setmetatable
    {}
    { :__call (fn [_ i] (. palette i))
      :__index palette
      :__newindex (fn [_ _ _])}))
