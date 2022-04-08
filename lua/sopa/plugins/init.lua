local function setup()
  local config = require("sopa.config")
  for plugin, _ in pairs(config.enabled_plugins) do
    local _local_1_ = require(("sopa.plugins." .. plugin))
    local setup0 = _local_1_["setup"]
    setup0()
  end
  return nil
end
return {setup = setup}
