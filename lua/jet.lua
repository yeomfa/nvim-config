require("jet.config")
local command = require("jet.commands")
local cmd = vim.api.nvim_create_user_command

cmd('JetConfig', command.jet_config(), {})

cmd('JetConfigPlugin', function(otps)
  command.jet_config_plugin(unpack(otps.fargs))
end, { nargs=1, complete=function() return command.get_plugins() end })

cmd('JetPlugins', command.jet_plugins(), {})

cmd('JetRemovePlugin', command.in_dev(), {})

cmd('JetUpdate', command.in_dev(), {})
