local notify = vim.notify
local ERROR = vim.log.levels.ERROR
local WARN = vim.log.levels.WARN
local function log(scope, level, msg)
  return notify(("%s: %s"):format(scope, msg), level)
end
local function logger(_3fscope)
  local scope
  if _3fscope then
    scope = ("sopa." .. _3fscope)
  else
    scope = "sopa"
  end
  local function _2_(...)
    return log(scope, ERROR, ...)
  end
  local function _3_(...)
    return log(scope, WARN, ...)
  end
  return {err = _2_, warn = _3_}
end
return logger
