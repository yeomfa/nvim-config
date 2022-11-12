local run_cmd = vim.api.nvim_command
local C = {}
local path = {
  config = '~/.config/nvim/lua/jet/JetConfig.lua',
  plugins = '~/.config/nvim/lua/jet/JetPlugins.lua',
  folderPlugins = '~/.config/nvim/lua/jet/plugins/'
}

function C.get_plugins()
  local pluginName, plugins, popen = 0, {}, io.popen
  local pfile = popen('ls ' .. path.folderPlugins )
  for file in pfile:lines() do
      pluginName = file:match('(.+)%..+$') 
      table.insert(plugins, pluginName)
  end
  pfile:close()
  return plugins
end

local function jet_msg(msg)
  print('Jet msg: ' .. msg)
end

function C.jet_config()
  local cmd = ':e ' .. path.config
  return cmd 
end

function C.jet_config_plugin(plugin)
  local pluginName = plugin

  if plugin:match('^.+(%..+)$') then
    if plugin:match('^.+(%..+)$') ~= '.lua' then
      jet_msg('Just enter the file name or with extension .lua !')
      return
    else
      pluginName = plugin:match('(.+)%..+$')  
    end
  end

  local cmd = ':e '.. path.folderPlugins .. pluginName .. '.lua'
  run_cmd(cmd)
end

function C.jet_plugins()
  local cmd = ':e ' .. path.plugins 
  return cmd 
end

function C.in_dev()
  local cmd = 'echo "in dev"'
  return cmd 
end

return C
