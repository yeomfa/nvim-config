local status, packer = pcall(require, "packer")
if (not status) then return end

packer.init {
	display = {
		open_fn = require('packer.util').float,
		show_all_info = true,
		prompt_border = 'double',
	}
}

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)

	-- Packer
	use 'wbthomason/packer.nvim'

	--LuaSnip
	use 'L3MON4D3/LuaSnip'

	-- THEMES
	use 'luisiacc/gruvbox-baby'
	use 'kyazdani42/nvim-web-devicons'

	-- Autopairs
	use 'windwp/nvim-autopairs'
	use 'windwp/nvim-ts-autotag'

	-- Commentary
	use 'tpope/vim-commentary'

	-- EMMET
	use 'mattn/emmet-vim'

	-- Lualine
	use 'nvim-lualine/lualine.nvim'

	-- Bufferline
	use { 'akinsho/bufferline.nvim', tag = "v2.*" }

	-- LspConfig
	use 'neovim/nvim-lspconfig'

	-- Telescope
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

	-- Nvim tree
	use {
		'kyazdani42/nvim-tree.lua',
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}

	-- IndentLine
	use 'Yggdroot/indentLine'

	-- Dashboard
	use 'glepnir/dashboard-nvim'

	-- vscode-like pictograms
	use 'onsails/lspkind.nvim'

	-- cmp
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/nvim-cmp'

	-- treesitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	-- null ls
	use 'jose-elias-alvarez/null-ls.nvim'

	-- prettier
	use 'MunifTanjim/prettier.nvim'

	-- lspsaga
	use 'glepnir/lspsaga.nvim'

	-- gitsigns
	use 'lewis6991/gitsigns.nvim'

end)
