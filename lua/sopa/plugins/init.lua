local function init()
  local config = require("sopa.config")
  for plugin, _ in pairs(config.enabled_plugins) do
    do end (require(("sopa.plugins." .. plugin))).init()
  end
  return nil
end
return {init = init}
