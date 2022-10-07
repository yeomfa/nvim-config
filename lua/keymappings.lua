local mapper = function(mode, key, result)
	vim.api.nvim_set_keymap(mode, key, result, { noremap = true, silent = true })
end

-- vim.g.mapleader = " "
-- Text editor
mapper("n", "<leader>w", ":w<CR>")
mapper("n", "<leader>q", ":q<CR>")
mapper("v", "<leader>s", ":sort<CR>")
mapper("n", "<leader>s", ":sort<CR>")

-- Neotree
mapper("n", "<leader>o", ":NvimTreeFocus<CR>")
mapper("n", "<leader>e", ":NvimTreeToggle<CR>")

-- Bufferline
-- mapper("n", "<leader>l", ":BufferLineCycleNext<CR>")
-- mapper("n", "<leader>h", ":BufferLineCyclePrev<CR>")
-- mapper("n", "<leader>bc", ":BufferLinePickClose<CR>")
-- mapper("n", "<leader>bp", ":BufferLinePick<CR>")
-- mapper("n", "<leader>ch", ":BufferLineCloseLeft<CR>")
-- mapper("n", "<leader>cl", ":BufferLineCloseRight<CR>")
-- mapper("n", "<leader>ca", ":bd<CR>")
--
-- Cokeline
local map = vim.api.nvim_set_keymap

map('n', '<leader>h', '<Plug>(cokeline-focus-prev)',  { silent = true })
map('n', '<leader>l', '<Plug>(cokeline-focus-next)',  { silent = true })
map('n', '<leader>p', '<Plug>(cokeline-switch-prev)', { silent = true })
map('n', '<leader>n', '<Plug>(cokeline-switch-next)', { silent = true })
map('n', '<leader>c', ':bd<cr>', { silent = true })

for i = 1,9 do
  map('n', ('<F%s>'):format(i),      ('<Plug>(cokeline-switch-%s)'):format(i),  { silent = true })
  map('n', ('<leader>%s'):format(i), ('<Plug>(cokeline-focus-%s)'):format(i), { silent = true })
end

-- Packer
mapper("n", "<leader>pi", ":PackerInstall<CR>")
mapper("n", "<leader>pu", ":PackerUpdate<CR>")
mapper("n", "<leader>ps", ":PackerSync<CR>")

-- Telescope
mapper("n", "<leader>ff", ":Telescope find_files<cr>")
mapper("n", "<leader>fg", ":Telescope live_grep<cr>")
mapper("n", "<leader>fb", ":Telescope buffers<cr>")
mapper("n", "<leader>fh", ":Telescope help_tags<cr>")
mapper("n", "<leader>fr", ":Telescope oldfiles<cr>")

-- Commentary
mapper("", "<leader>}", ":Commentary<cr>")
