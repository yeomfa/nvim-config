local status, packer = pcall(require, "packer")
if (not status) then return end
local userPlugins = require("jetPlugins")

packer.init {
  display = {
    open_fn = require('packer.util').float,
    show_all_info = true,
    prompt_border = 'double',
  }
}

vim.cmd [[packadd packer.nvim]]


packer.startup(function(use)

  for _, plugin in pairs(userPlugins) do
    use (plugin)
  end

  -- packer
  use 'wbthomason/packer.nvim'

  -- luasnip
  use 'L3MON4D3/LuaSnip'

  -- themes
  use 'luisiacc/gruvbox-baby'
  use 'kyazdani42/nvim-web-devicons'

  -- autopairs
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  -- emmet
  use 'mattn/emmet-vim'

  -- commentary
  use 'tpope/vim-commentary'

  -- lualine
  use 'nvim-lualine/lualine.nvim'

  -- -- bufferline
  use { 'akinsho/bufferline.nvim', tag = "v2.*" }

  -- lspConfig
  use 'neovim/nvim-lspconfig'

  -- telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- multicursor
  use {
    'mg979/vim-visual-multi', branch = 'master',
  }

  -- colorizer
  use 'norcalli/nvim-colorizer.lua'

  -- nvim tree
  use {
    'kyazdani42/nvim-tree.lua',
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- dashboard
  use 'glepnir/dashboard-nvim'

  -- vscode-like pictograms
  use 'onsails/lspkind.nvim'

  -- cmp
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'saadparwaiz1/cmp_luasnip'

  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- CommentString
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- gitsigns
  use 'lewis6991/gitsigns.nvim'

  -- blankline
  use "lukas-reineke/indent-blankline.nvim"

  -- friendly snippets
  use "rafamadriz/friendly-snippets"

  -- lightspeed
  use 'ggandor/lightspeed.nvim'

end)

require("jetPlugins")
