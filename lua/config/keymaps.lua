local mapper = function(mode, key, result)
	vim.api.nvim_set_keymap(mode, key, result, { noremap = true, silent = true })
end

-- Leader
vim.g.mapleader = ' '

-- Text editor
mapper('n', '<leader>w', ':w<CR>')
mapper('n', '<leader>q', ':q<CR>')
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

-- Split window
mapper('n', '<leader>ss', ':split<cr>')
mapper('n', '<leader>sv', ':vsplit<cr>')

-- Move window
mapper('n', '<leader>sh', '<C-w>h')
mapper('n', '<leader>sj', '<C-w>j')
mapper('n', '<leader>sk', '<C-w>k')
mapper('n', '<leader>sl', '<C-w>l')
