require("jet.config")
local configs = require("jet.configs")
local cmd = vim.api.nvim_create_user_command

cmd('JetConfig', configs.jet_config(), {})

cmd('JetConfigPlugin', function(opts)
  configs.jet_config_plugin(unpack(opts.fargs))
end, {
  nargs = 1,
  complete = function(lead)
    return configs.get_options(lead)
  end
})

cmd('JetPlugins', configs.jet_plugins(), {})

cmd('JetRemovePlugin', function(opts)
  configs.jet_remove_plugin(unpack(opts.fargs))
end, {
  nargs = 1,
  complete = function(lead)
    return configs.get_options(lead)
  end
})

cmd('JetUpdate', configs.in_dev(), {})
