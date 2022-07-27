local default_config
local function _1_(_, key)
  return error(("invalid setting: " .. key))
end
default_config = setmetatable({enabled_plugins = {}}, {__index = _1_})
local user_config = setmetatable({}, {__index = default_config})
local valid_plugins
local function _2_(_, key)
  return error(("invalid plugin name: " .. key))
end
valid_plugins = setmetatable({bufferline = true, cmp = true, copilot = true, ["indent-blankline"] = true, leap = true, ["neo-tree"] = true, ["nvim-tree"] = true, treesitter = true}, {__index = _2_})
local function enable_plugins(arg)
  local t = type(arg)
  local _3_ = t
  if (_3_ == "nil") then
    user_config.enabled_plugins = nil
    return nil
  elseif (_3_ == "table") then
    local tbl = {}
    for _, plugin in ipairs(arg) do
      do local _ = valid_plugins[plugin] end
      tbl[plugin] = true
    end
    user_config.enabled_plugins = tbl
    return nil
  elseif true then
    local _ = _3_
    return error(("`enabled_plugins` must be table or nil, got: " .. t))
  else
    return nil
  end
end
local function _5_(_, key, val)
  local _6_ = key
  if (_6_ == "enabled_plugins") then
    return enable_plugins(val)
  elseif true then
    local _0 = _6_
    return error(("invalid setting: " .. key))
  else
    return nil
  end
end
return setmetatable({}, {__index = user_config, __newindex = _5_})
