local _local_1_ = require("sopa.config.utils")
local check = _local_1_["check"]
local metasetting = _local_1_["metasetting"]
local reset = _local_1_["reset"]
local settings = _local_1_["settings"]
local _local_2_ = require("sopa.logger")("config")
local err = _local_2_["err"]
local integrations
do
  local default = {cmp = true, ["indent-blankline"] = true, leap = true, ["neo-tree"] = true, treesitter = true}
  local setter
  local function _3_(t, k, v)
    if default[k] then
      if check(("integrations." .. k), v, {"boolean", "nil"}) then
        t[k] = v
        return nil
      else
        return nil
      end
    else
      return err(("`integrations`: invalid key: " .. k))
    end
  end
  setter = _3_
  integrations = metasetting(default, setter)
end
local config
do
  local default = {custom_groups = {}, integrations = integrations, terminal_colors = true}
  local setter
  local function _6_(t, k, v)
    local _7_ = k
    if (_7_ == "custom_groups") then
      if check(k, v, "table") then
        t[k] = v
        return nil
      else
        return nil
      end
    elseif (_7_ == "integrations") then
      if check(k, v, {"table", "nil"}) then
        if (nil == v) then
          return reset(t.integrations)
        else
          for k0, v0 in settings(v) do
            t.integrations[k0] = v0
          end
          return nil
        end
      else
        return nil
      end
    elseif (_7_ == "terminal_colors") then
      if check(k, v, {"boolean", "nil"}) then
        t[k] = v
        return nil
      else
        return nil
      end
    elseif true then
      local _ = _7_
      return err(("invalid setting: " .. k))
    else
      return nil
    end
  end
  setter = _6_
  config = metasetting(default, setter)
end
local function reset_config(_3fconfig)
  reset(config)
  if _3fconfig then
    for k, v in pairs(_3fconfig) do
      config[k] = v
    end
    return nil
  else
    return nil
  end
end
return {config = config, reset = reset_config}
