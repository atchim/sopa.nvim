local __index = {"#0c0c0c", "#121212", "#1a1a1a", "#252525", "#383838", "#5a5a5a", "#959595", "#ff5b5b", "#bc8f05", "#54a900", "#00ad2b", "#00a7a7", "#6b90ff", "#ba74ff", "#fc4ad0", [0] = "#080808"}
local __call
local function _1_(_, i)
  return __index[i]
end
__call = _1_
local __newindex
local function _2_()
  return nil
end
__newindex = _2_
return setmetatable({}, {__call = __call, __index = __index, __newindex = __newindex})
