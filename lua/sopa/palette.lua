local palette = {[0] = "#080808", "#0c0c0c", "#121212", "#1a1a1a", "#252525", "#383838", "#5a5a5a", "#959595", "#ff5b5b", "#bc8f05", "#54a900", "#00ad2b", "#00a7a7", "#6b90ff", "#ba74ff", "#fc4ad0"}
local function _1_(_, i)
  return palette[i]
end
local function _2_(_, _0, _1)
end
return setmetatable({}, {__call = _1_, __index = palette, __newindex = _2_})
