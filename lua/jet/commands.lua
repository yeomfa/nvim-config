local C = {}

C.jetConfig = ':e ~/.config/nvim/lua/jet/JetConfig.lua'

function C.jetConfigPlugin(plugin)
  local rt = "echo " .. "'" .. plugin .. "'"
  return rt
end

function C.indev()
  local rt = "echo 'in dev"
  return rt
end

return C
