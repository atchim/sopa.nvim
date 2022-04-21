(local palette
  { -1 :NONE
    00 :#080808
    01 :#0c0c0c
    02 :#121212
    03 :#1a1a1a
    04 :#252525
    05 :#383838
    06 :#5a5a5a
    07 :#959595
    08 :#ff5b5b
    09 :#bc8f05
    10 :#54a900
    11 :#00ad2b
    12 :#00a7a7
    13 :#6b90ff
    14 :#ba74ff
    15 :#fc4ad0})

(fn hex [i]
  "Return string in `#rrggbb` format of color at index `i` of palette."
  (. palette i))

{ : hex
  : palette}
