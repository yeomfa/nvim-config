packer = require 'packer'

packer.init {
  display = {
   open_fn = require('packer.util').float,
   show_all_info = true,
   prompt_border = 'double',
  }
}

packer.startup(function()

  use 'wbthomason/packer.nvim'

  -- REACT JS
  use 'neoclide/vim-jsx-improve'
  use 'maxmellon/vim-jsx-pretty'
  use 'yeomfa/nvim-react-snnipets'

  use 'SirVer/ultisnips'
  use 'quangnguyen30192/cmp-nvim-ultisnips'

  use 'pangloss/vim-javascript'
  use 'yuezk/vim-js'
  use 'HerringtonDarkholme/yats.vim'

  -- HTML
  use 'othree/html5.vim'

  -- THEMES
  use 'folke/tokyonight.nvim'
  use 'morhetz/gruvbox'
  use 'navarasu/onedark.nvim'

  -- Commentary
  use 'tpope/vim-commentary'

  -- EMMET
  use 'mattn/emmet-vim'

  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Bufferline
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

  -- LspConfig
  use 'neovim/nvim-lspconfig'

  -- Polyglot
  use 'sheerun/vim-polyglot'

  -- Autopairs
  use 'jiangmiao/auto-pairs'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  
    -- cmp
  use { 'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/nvim-cmp',
      }
  
  -- multicursor
  use {
    'mg979/vim-visual-multi', branch = 'master',
  }
  
  -- colorizer
  use 'norcalli/nvim-colorizer.lua'

  -- Nvim tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use 'Yggdroot/indentLine'

end)
