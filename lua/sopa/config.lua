local default_config
local function _1_(_, key)
  return error(("invalid setting: " .. key))
end
default_config = setmetatable({enabled_integrations = {}}, {__index = _1_})
local user_config = setmetatable({}, {__index = default_config})
local valid_integrations
local function _2_(_, key)
  return error(("invalid integration name: " .. key))
end
valid_integrations = setmetatable({cmp = true, ["indent-blankline"] = true, leap = true, ["neo-tree"] = true, treesitter = true}, {__index = _2_})
local function enable_integrations(arg)
  local t = type(arg)
  local _3_ = t
  if (_3_ == "nil") then
    user_config.enabled_integrations = nil
    return nil
  elseif (_3_ == "table") then
    local tbl = {}
    for _, integration in ipairs(arg) do
      do local _ = valid_integrations[integration] end
      tbl[integration] = true
    end
    user_config.enabled_integrations = tbl
    return nil
  elseif true then
    local _ = _3_
    return error(("`enabled_integrations` must be table or nil, got: " .. t))
  else
    return nil
  end
end
local function _5_(_, key, val)
  local _6_ = key
  if (_6_ == "enabled_integrations") then
    return enable_integrations(val)
  elseif true then
    local _0 = _6_
    return error(("invalid setting: " .. key))
  else
    return nil
  end
end
return setmetatable({}, {__index = user_config, __newindex = _5_})
