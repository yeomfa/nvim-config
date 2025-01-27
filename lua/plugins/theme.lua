return {
  -- Color scheme
  { 
    -- 'yeomfa/jetly',
    dir = '~/workspace/nvim-plugins/summer',
    lazy = false,
    opts = {
      transparent = true
    },
    config = function(_, opts)
      vim.cmd [[ colorscheme summer ]]
    end
  },
  -- { "catppuccin/nvim", name = "catppuccin", priority = 1000,
  --   config = function(_, opts)
  --     require("catppuccin").setup({
  --         flavour = "auto", -- latte, frappe, macchiato, mocha
  --         background = { -- :h background
  --             light = "latte",
  --             dark = "macchiato",
  --         },
  --         transparent_background = true, -- disables setting the background color.
  --         show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
  --         term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
  --         dim_inactive = {
  --             enabled = false, -- dims the background color of inactive window
  --             shade = "dark",
  --             percentage = 0.15, -- percentage of the shade to apply to the inactive window
  --         },
  --         no_italic = false, -- Force no italic
  --         no_bold = false, -- Force no bold
  --         no_underline = false, -- Force no underline
  --         styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
  --             comments = { "italic" }, -- Change the style of comments
  --             conditionals = { "italic" },
  --             loops = {},
  --             functions = {},
  --             keywords = {},
  --             strings = { 'italic'},
  --             variables = {},
  --             numbers = {},
  --             booleans = {},
  --             properties = {},
  --             types = {},
  --             operators = {},
  --             -- miscs = {}, -- Uncomment to turn off hard-coded styles
  --         },
  --         color_overrides = {},
  --         custom_highlights = {},
  --         default_integrations = true,
  --         integrations = {
  --             cmp = true,
  --             gitsigns = true,
  --             nvimtree = true,
  --             treesitter = true,
  --             notify = false,
  --             mini = {
  --                 enabled = true,
  --                 indentscope_color = "",
  --             },
  --             -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
  --         },
  --     })
  --
  --     -- setup must be called before loading
  --     vim.cmd.colorscheme "catppuccin"
  --   end
  -- }
  -- {
  --   'sainnhe/gruvbox-material',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     -- Optionally configure and load the colorscheme
  --     -- directly inside the plugin declaration.
  --     vim.g.gruvbox_material_enable_italic = true
  --     vim.cmd.colorscheme('gruvbox-material')
  --   end
  -- }
  -- {
  --   'maxmx03/solarized.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   ---@type solarized.config
  --   opts = {},
  --   config = function(_, opts)
  --     vim.o.termguicolors = true
  --     vim.o.background = 'dark'
  --     require('solarized').setup(opts)
  --     vim.cmd.colorscheme 'solarized'
  --   end,
  -- }
}
