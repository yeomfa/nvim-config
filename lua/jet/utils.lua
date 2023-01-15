local U = {}

U.run_cmd = vim.api.nvim_command

function U.clear_cmdline()
  U.run_cmd('normal! :')
end

function U.jet_msg(msg)
  print('Jet msg: ' .. msg)
end

return U
