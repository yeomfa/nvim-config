local mapper = function(mode, key, result)
	vim.api.nvim_set_keymap(mode, key, result, { noremap = true, silent = true })
end

vim.g.mapleader = ' '

-- Text editor
mapper('n', '<leader>w', ':w<CR>')
mapper('n', '<leader>q', ':q<CR>')
mapper('n', '<leader>s', ':sort<CR>')
mapper('v', '<leader>s', ':sort<CR>')
mapper('n', '<leader>ca', ':bd<CR>')

-- FileTree
mapper('n', '<leader>o', ':NvimTreeFocus<CR>')
mapper('n', '<leader>e', ':NvimTreeToggle<CR>')

-- BufferLine
mapper('n', '<leader>l', ':BufferLineCycleNext<CR>')
mapper('n', '<leader>h', ':BufferLineCyclePrev<CR>')
mapper('n', '<leader>bc', ':BufferLinePickClose<CR>')
mapper('n', '<leader>bp', ':BufferLinePick<CR>')
mapper('n', '<leader>ch', ':BufferLineCloseLeft<CR>')
mapper('n', '<leader>cl', ':BufferLineCloseRight<CR>')

-- Telescope
mapper('n', '<leader>ff', ':Telescope find_files<cr>')
mapper('n', '<leader>fr', ':Telescope oldfiles<cr>')

-- Toggleterm
mapper('n', '<leader>t', ':ToggleTerm<cr>')
