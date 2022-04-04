local def
local function _1_(_, key)
  return error(("invalid setting: " .. key))
end
def = setmetatable({enabled_plugins = {}}, {__index = _1_})
local cfg = setmetatable({}, {__index = def})
local plugins
local function _2_(_, key)
  return error(("invalid plugin name: " .. key))
end
plugins = setmetatable({bufferline = true, copilot = true, leap = true, ["nvim-tree"] = true, treesitter = true}, {__index = _2_})
local function enable_plugins(val)
  local t = type(val)
  local _3_ = t
  if (_3_ == "nil") then
    cfg["enabled_plugins"] = nil
    return nil
  elseif (_3_ == "table") then
    local enabled = {}
    for _, plugin in ipairs(val) do
      if plugins[plugin] then
        enabled[plugin] = true
      else
      end
    end
    cfg["enabled_plugins"] = enabled
    return nil
  elseif true then
    local _ = _3_
    return error(("`enabled_plugins` must be table or nil, got: " .. t))
  else
    return nil
  end
end
local function _6_(_, key, val)
  local _7_ = key
  if (_7_ == "enabled_plugins") then
    return enable_plugins(val)
  elseif true then
    local _0 = _7_
    return error(("invalid setting: " .. key))
  else
    return nil
  end
end
return setmetatable({}, {__index = cfg, __newindex = _6_})
