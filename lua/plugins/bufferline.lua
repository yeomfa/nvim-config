return {
  'akinsho/bufferline.nvim',
  event = 'VeryLazy',
  opts = {
    options = {
      offsets = {
        {
          filetype = 'NvimTree',
          text = 'Folder: ' .. vim.fn.substitute(vim.fn.getcwd(), '^.*/', '', ''),
          highlight = '@property',
          text_align = 'center',
          separator = false,
        },
      },
    },
  },
  config = function(_, opts)
    require("bufferline").setup(opts)
    -- Fix bufferline when restoring a session
    vim.api.nvim_create_autocmd({ "BufAdd", "BufDelete" }, {
      callback = function()
        vim.schedule(function()
          pcall(nvim_bufferline)
        end)
      end,
    })
  end,
}
