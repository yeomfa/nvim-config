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

  -- REACT, JS & TS
  use 'neoclide/vim-jsx-improve'
  use 'maxmellon/vim-jsx-pretty'

  use 'SirVer/ultisnips'

  use 'pangloss/vim-javascript'
  use 'yuezk/vim-js'
  use 'HerringtonDarkholme/yats.vim'

  -- HTML
  use 'othree/html5.vim'

  -- THEMES
  use 'navarasu/onedark.nvim'
  use 'kyazdani42/nvim-web-devicons'

  -- Commentary
  use 'tpope/vim-commentary'

  -- EMMET
  use 'mattn/emmet-vim'

  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    -- requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Bufferline
  use {'akinsho/bufferline.nvim', tag = "v2.*", 
  -- requires = 'kyazdani42/nvim-web-devicons'
}

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
      -- 'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- IndentLine
  use 'Yggdroot/indentLine'

  -- Dashboard
  use 'glepnir/dashboard-nvim'

  -- Coc
  use {'neoclide/coc.nvim', branch = 'release'}

end)
