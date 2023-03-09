local _local_1_ = require("sopa.logger")("config.utils")
local err = _local_1_["err"]
local inspect = vim.inspect
local function tyin_3f(t, x)
  local found_3f = false
  local x0 = type(x)
  for _, t0 in ipairs(t) do
    if found_3f then break end
    if (t0 == x0) then
      found_3f = true
    else
    end
  end
  return found_3f
end
local function check(setting, value, checker, _3fmsg)
  local value_ty = type(value)
  local checker0, expected, got = nil, nil, nil
  do
    local _3_ = type(checker)
    if (_3_ == "string") then
      local function _4_(x)
        return (checker == type(x))
      end
      checker0, expected, got = _4_, checker, value_ty
    elseif (_3_ == "table") then
      local function _5_(...)
        return tyin_3f(checker, ...)
      end
      checker0, expected, got = _5_, table.concat(checker, " or "), value_ty
    elseif (_3_ == "function") then
      checker0, expected, got = checker, assert(_3fmsg), inspect(value)
    elseif (nil ~= _3_) then
      local ty = _3_
      checker0, expected, got = error(("`checker`: invalid type: " .. ty))
    else
      checker0, expected, got = nil
    end
  end
  local res = checker0(value)
  if not res then
    err(("config.%s: expected %s; got: %s"):format(setting, expected, got))
  else
  end
  return res
end
local function reset(metasetting)
  local reset0
  do
    local t_8_ = getmetatable(metasetting)
    if (nil ~= t_8_) then
      t_8_ = (t_8_).__reset
    else
    end
    reset0 = t_8_
  end
  if reset0 then
    return reset0(metasetting)
  else
    return nil
  end
end
local function settings(metasetting)
  local x
  do
    local t_11_ = getmetatable(metasetting)
    if (nil ~= t_11_) then
      t_11_ = (t_11_).__index
    else
    end
    x = t_11_
  end
  if x then
    local t = x
    local function iter(_, k)
      local k0, v = next(t, k)
      if (nil == k0) then
        if (t == x) then
          local x0
          do
            local t_13_ = getmetatable(t)
            if (nil ~= t_13_) then
              t_13_ = (t_13_).__index
            else
            end
            x0 = t_13_
          end
          if x0 then
            t = x0
            return iter()
          else
            return nil
          end
        else
          return nil
        end
      elseif ((t ~= x) and (nil ~= rawget(x, k0))) then
        return iter(nil, k0)
      else
        return k0, v
      end
    end
    return iter
  else
    return nil
  end
end
local function __reset(metasetting)
  local x
  do
    local t_19_ = getmetatable(metasetting)
    if (nil ~= t_19_) then
      t_19_ = (t_19_).__index
    else
    end
    x = t_19_
  end
  if x then
    for k, v in settings(metasetting) do
      if not reset(v) then
        x[k] = nil
      else
      end
    end
    return nil
  else
    return nil
  end
end
local function metasetting(defaults, setter)
  local __index = setmetatable({}, {__index = defaults})
  local __newindex
  local function _23_(_, k, v)
    return setter(__index, k, v)
  end
  __newindex = _23_
  return setmetatable({}, {__index = __index, __newindex = __newindex, __reset = __reset})
end
return {check = check, metasetting = metasetting, reset = reset, settings = settings}
