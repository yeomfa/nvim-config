require("jet.config")
local command = require("jet.commands")
local cmd = vim.api.nvim_create_user_command

cmd('JetConfig', command.jetConfig , {})
cmd('JetConfigPlugin', command.indev(), 
  { nargs=1,
    complete=function(_,_,_) return { "1", "2", "3"} end})
cmd('JetPlugins', ':e ~/.config/nvim/lua/jet/JetPlugins.lua', {})
cmd('JetRemovePlugin', 'echo "In dev"', {})
cmd('JetUpdate', command.indev(), {})
