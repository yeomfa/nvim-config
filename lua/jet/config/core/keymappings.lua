local mapper = function(mode, key, result)
	vim.api.nvim_set_keymap(mode, key, result, { noremap = true, silent = true })
end

-- Text editor
mapper("n", "<leader>w", ":w<CR>")
mapper("n", "<leader>q", ":q<CR>")
mapper("v", "<leader>s", ":sort<CR>")
mapper("n", "<leader>s", ":sort<CR>")
mapper("n", "<leader>ca", ":bd<CR>")

-- Neotree
mapper("n", "<leader>o", ":NvimTreeFocus<CR>")
mapper("n", "<leader>e", ":NvimTreeToggle<CR>")

-- Bufferline
mapper("n", "<leader>l", ":BufferLineCycleNext<CR>")
mapper("n", "<leader>h", ":BufferLineCyclePrev<CR>")
mapper("n", "<leader>bc", ":BufferLinePickClose<CR>")
mapper("n", "<leader>bp", ":BufferLinePick<CR>")
mapper("n", "<leader>ch", ":BufferLineCloseLeft<CR>")
mapper("n", "<leader>cl", ":BufferLineCloseRight<CR>")

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

-- Test Jetly
mapper("n", "<leader>j", ":colorscheme jetly<cr>")
