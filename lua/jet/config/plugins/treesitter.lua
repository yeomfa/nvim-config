local status, ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

ts.setup {
	highlight = {
		enable = true,
		disable = {},
	},
	indent = {
		enable = true,
		disable = {'python'},
	},
	ensure_installed = {
		'tsx',
    'javascript',
    'typescript',
    'python',
    'c',
		'lua',
		'json',
		'css',
		'html',
    'rust',
	},
	autotag = {
		enable = true,
	},
  context_commentstring = {
    enable = true,
  }
}
