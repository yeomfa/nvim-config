local mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true})
end

-- Text editor
mapper("n", "w", ":w<CR>")
mapper("n", "q", ":q<CR>")
mapper("n", "<leader>qq", ":q!<CR>")

-- Neotree
mapper("n", "<leader>o", ":Neotree<CR>")

-- Bufferline
mapper("n", "<leader>l", ":BufferLineCycleNext<CR>")
mapper("n", "<leader>h", ":BufferLineCyclePrev<CR>")
mapper("n", "<leader>c", ":BufferLinePickClose<CR>")

-- Packer
mapper("n", "<leader>pi", ":PackerInstall<CR>")
mapper("n", "<leader>pu", ":PackerUpdate<CR>")
mapper("n", "<leader>ps", ":PackerStatus<CR>")
mapper("n", "<leader>pc", ":PackerCompile<CR>")

-- Telescope
mapper("n", "<leader>ff", ":Telescope find_files<cr>")
mapper("n", "<leader>fg", ":Telescope live_grep<cr>")
mapper("n", "<leader>fb", ":Telescope buffers<cr>")
mapper("n", "<leader>fh", ":Telescope help_tags<cr>")

-- Commentary
mapper("", "<leader>}", ":Commentary<CR>")
