return {
  -- Leap
  {
    'ggandor/leap.nvim',
    config = function(_, opts)
      require('leap').add_default_mappings()
    end
  },

  -- Autopairs
  {
      'windwp/nvim-autopairs',
      event = "InsertEnter",
      config = true
      -- use opts = {} for passing setup options
      -- this is equivalent to setup({}) function
  },

  -- Autotag
  {
    'windwp/nvim-ts-autotag',
    -- opts = {
    --   -- Defaults
    --   enable_close = true, -- Auto close tags
    --   enable_rename = true, -- Auto rename pairs of tags
    --   enable_close_on_slash = false -- Auto close on trailing </
    -- },
    -- Also override individual filetype configs, these take priority.
    -- Empty by default, useful if one of the "opts" global settings
    -- doesn't work well in a specific filetype
    per_filetype = {
      ["html"] = {
        enable_close = false
      }
    },
    config = true
  },

  {
    "mg979/vim-visual-multi",
    branch = "master",
    config = function()
      vim.api.nvim_set_keymap('n', '<C-n>', ':call VM_find_under()<CR>', { noremap = true, silent = true })
    end,
  },

}
