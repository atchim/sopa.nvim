local M = {}
M.init = function()
  local config = require("sopa.config")
  for integration, _ in pairs(config.enabled_integrations) do
    do end (require(("sopa.integrations." .. integration))).init()
  end
  return nil
end
return M
